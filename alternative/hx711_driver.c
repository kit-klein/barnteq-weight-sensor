/**
 * @file hx711_driver.c
 * @brief HX711 24-bit ADC Driver Implementation
 */

#include "hx711_driver.h"
#include "em_gpio.h"
#include "em_cmu.h"
#include <string.h>

// Module state
static hx711_config_t g_config;
static bool g_initialized = false;

// Timing macros (adjust based on testing if needed)
#define HX711_CLOCK_DELAY_US 1
#define HX711_POWERDOWN_DELAY_US 70

/**
 * @brief Microsecond delay using busy-wait loop
 * Assuming 39MHz CPU clock, ~39 cycles per microsecond
 */
static inline void delay_us(uint32_t us)
{
    volatile uint32_t count = us * 10;  // Rough approximation for 39MHz
    while (count--);
}

/**
 * @brief Set SCK pin HIGH
 */
static inline void sck_high(void)
{
    GPIO_PinOutSet(g_config.sck_port, g_config.sck_pin);
}

/**
 * @brief Set SCK pin LOW
 */
static inline void sck_low(void)
{
    GPIO_PinOutClear(g_config.sck_port, g_config.sck_pin);
}

/**
 * @brief Read DOUT pin state
 */
static inline bool dout_read(void)
{
    return GPIO_PinInGet(g_config.dout_port, g_config.dout_pin) != 0;
}

hx711_error_t hx711_init(const hx711_config_t *config)
{
    if (config == NULL) {
        return HX711_ERR_INVALID_PARAM;
    }

    // Store configuration
    memcpy(&g_config, config, sizeof(hx711_config_t));

    // Enable GPIO clock if not already enabled
    CMU_ClockEnable(cmuClock_GPIO, true);

    // Configure SCK as output (start LOW)
    GPIO_PinModeSet(g_config.sck_port, g_config.sck_pin, gpioModePushPull, 0);

    // Configure DOUT as input (no pull resistor needed)
    GPIO_PinModeSet(g_config.dout_port, g_config.dout_pin, gpioModeInput, 0);

    // Power up and set initial gain
    hx711_power_up();

    // Wait for chip to stabilize
    sl_sleeptimer_delay_millisecond(100);

    g_initialized = true;

    // Perform initial read to set gain
    int32_t dummy;
    hx711_read_raw(&dummy, 1000);

    return HX711_OK;
}

bool hx711_is_ready(void)
{
    if (!g_initialized) {
        return false;
    }
    return !dout_read(); // DOUT is LOW when ready
}

hx711_error_t hx711_read_raw(int32_t *value, uint32_t timeout_ms)
{
    if (!g_initialized) {
        return HX711_ERR_INVALID_PARAM;
    }

    if (value == NULL) {
        return HX711_ERR_INVALID_PARAM;
    }

    // Wait for HX711 to be ready (DOUT goes LOW)
    uint32_t start_tick = sl_sleeptimer_get_tick_count();
    uint32_t timeout_ticks = sl_sleeptimer_ms_to_tick(timeout_ms);

    // Check initial DOUT state
    bool initial_dout = dout_read();

    while (dout_read()) {
        if (timeout_ms > 0) {
            uint32_t elapsed = sl_sleeptimer_get_tick_count() - start_tick;
            if (elapsed > timeout_ticks) {
                return HX711_ERR_TIMEOUT;
            }
        }
    }

    // Log wait time
    uint32_t wait_ticks = sl_sleeptimer_get_tick_count() - start_tick;
    (void)initial_dout; // Avoid unused warning if not used in debug
    (void)wait_ticks;

    // Read 24 bits (MSB first)
    uint32_t raw_value = 0;
    uint8_t high_bit_count = 0; // Count how many bits were HIGH

    for (uint8_t i = 0; i < 24; i++) {
        sck_high();
        delay_us(HX711_CLOCK_DELAY_US);

        bool bit = dout_read();
        if (bit) {
            high_bit_count++;
        }
        raw_value = (raw_value << 1) | (bit ? 1 : 0);

        sck_low();
        delay_us(HX711_CLOCK_DELAY_US);
    }

    // Diagnostic: Check if DOUT toggled at all during the 24-bit read
    // If high_bit_count is 0, DOUT stayed LOW the entire time (very unusual)
    // If high_bit_count is 24, DOUT stayed HIGH the entire time (also very unusual)
    // Typical readings will have a mix of HIGH and LOW bits
    (void)high_bit_count; // Use to avoid unused warning

    // Generate additional pulses to set gain for next reading
    uint8_t gain_pulses = (uint8_t)g_config.gain;

    for (uint8_t i = 0; i < gain_pulses; i++) {
        sck_high();
        delay_us(HX711_CLOCK_DELAY_US);
        sck_low();
        delay_us(HX711_CLOCK_DELAY_US);
    }

    // Check if DOUT went HIGH after read (it should)
    sl_sleeptimer_delay_millisecond(1);
    bool dout_after_read = dout_read();
    (void)dout_after_read; // Use variable to avoid warning

    // Convert 24-bit two's complement to 32-bit signed integer
    if (raw_value & 0x800000) {
        // Negative number - extend sign bit
        *value = (int32_t)(raw_value | 0xFF000000);
    } else {
        *value = (int32_t)raw_value;
    }

    // Diagnostic: If raw_value is exactly 0, DOUT might be stuck LOW
    // This indicates load cell might not be connected or powered
    if (raw_value == 0) {
        // This is suspicious but not necessarily an error
        // A real load cell reading is unlikely to be exactly 0x000000
    }

    return HX711_OK;
}

hx711_error_t hx711_set_gain(hx711_gain_t gain)
{
    if (!g_initialized) {
        return HX711_ERR_INVALID_PARAM;
    }

    if (gain < HX711_CHANNEL_A_GAIN_128 || gain > HX711_CHANNEL_A_GAIN_64) {
        return HX711_ERR_INVALID_PARAM;
    }

    g_config.gain = gain;

    // Gain is set on next read
    return HX711_OK;
}

hx711_gain_t hx711_get_gain(void)
{
    return g_config.gain;
}

void hx711_power_down(void)
{
    if (!g_initialized) {
        return;
    }

    sck_high();
    delay_us(HX711_POWERDOWN_DELAY_US);
}

void hx711_power_up(void)
{
    if (!g_initialized) {
        return;
    }

    sck_low();
}

hx711_error_t hx711_read_average(int32_t *value, uint8_t samples, uint32_t timeout_ms)
{
    if (!g_initialized || value == NULL || samples == 0) {
        return HX711_ERR_INVALID_PARAM;
    }

    int64_t sum = 0;
    int32_t reading;
    hx711_error_t err;

    for (uint8_t i = 0; i < samples; i++) {
        err = hx711_read_raw(&reading, timeout_ms);
        if (err != HX711_OK) {
            return err;
        }
        sum += reading;
    }

    *value = (int32_t)(sum / samples);
    return HX711_OK;
}
