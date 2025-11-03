/**
 * @file hx711_driver.h
 * @brief HX711 24-bit ADC Driver for Load Cell Interface
 *
 * This driver implements the HX711 proprietary 2-wire serial protocol
 * for reading weight sensor data from load cells.
 *
 * @note HX711 uses a custom bit-bang protocol, NOT standard I2C or SPI
 */

#ifndef HX711_DRIVER_H
#define HX711_DRIVER_H

#include <stdint.h>
#include <stdbool.h>

/**
 * @brief HX711 channel and gain settings
 */
typedef enum {
    HX711_CHANNEL_A_GAIN_128 = 1,  // 25 clock pulses - default, highest gain
    HX711_CHANNEL_B_GAIN_32  = 2,  // 26 clock pulses
    HX711_CHANNEL_A_GAIN_64  = 3   // 27 clock pulses
} hx711_gain_t;

/**
 * @brief HX711 configuration structure
 */
typedef struct {
    uint32_t sck_port;      // GPIO port for serial clock (output)
    uint32_t sck_pin;       // GPIO pin for serial clock (output)
    uint32_t dout_port;     // GPIO port for data out (input)
    uint32_t dout_pin;      // GPIO pin for data out (input)
    hx711_gain_t gain;      // Channel and gain selection
} hx711_config_t;

/**
 * @brief HX711 error codes
 */
typedef enum {
    HX711_OK = 0,
    HX711_ERR_TIMEOUT = -1,
    HX711_ERR_NOT_READY = -2,
    HX711_ERR_INVALID_PARAM = -3
} hx711_error_t;

/**
 * @brief Initialize HX711 hardware and GPIO
 *
 * @param config Pointer to HX711 configuration structure
 * @return hx711_error_t Error code (HX711_OK on success)
 */
hx711_error_t hx711_init(const hx711_config_t *config);

/**
 * @brief Read raw 24-bit value from HX711
 *
 * This function implements the bit-bang protocol:
 * 1. Wait for DOUT to go LOW (data ready)
 * 2. Generate 25-27 clock pulses on SCK
 * 3. Read one bit per clock pulse from DOUT (MSB first)
 *
 * @param value Pointer to store the raw 24-bit reading
 * @param timeout_ms Timeout in milliseconds (0 = no timeout)
 * @return hx711_error_t Error code (HX711_OK on success)
 */
hx711_error_t hx711_read_raw(int32_t *value, uint32_t timeout_ms);

/**
 * @brief Check if HX711 is ready for reading
 *
 * @return true if DOUT is LOW (ready), false otherwise
 */
bool hx711_is_ready(void);

/**
 * @brief Set channel and gain for next reading
 *
 * @param gain Channel and gain setting
 * @return hx711_error_t Error code (HX711_OK on success)
 */
hx711_error_t hx711_set_gain(hx711_gain_t gain);

/**
 * @brief Get current gain setting
 *
 * @return hx711_gain_t Current channel and gain
 */
hx711_gain_t hx711_get_gain(void);

/**
 * @brief Put HX711 into low-power mode
 *
 * Sets SCK HIGH for >60us to enter power-down mode
 */
void hx711_power_down(void);

/**
 * @brief Wake HX711 from low-power mode
 *
 * Sets SCK LOW to exit power-down mode
 */
void hx711_power_up(void);

/**
 * @brief Read multiple samples and return average
 *
 * @param value Pointer to store averaged reading
 * @param samples Number of samples to average (1-255)
 * @param timeout_ms Timeout per sample in milliseconds
 * @return hx711_error_t Error code (HX711_OK on success)
 */
hx711_error_t hx711_read_average(int32_t *value, uint8_t samples, uint32_t timeout_ms);

#endif // HX711_DRIVER_H
