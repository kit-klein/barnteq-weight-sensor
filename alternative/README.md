# Alternative HX711 Implementation

This folder contains an alternative implementation for **direct GPIO bit-bang communication** with a raw HX711 chip.

## What's in This Folder

- **hx711_driver.h** - Header file for raw HX711 GPIO interface
- **hx711_driver.c** - Implementation of HX711 proprietary 2-wire protocol

## Why This Exists

The main project uses the **M5Stack Weight I2C Unit** which has:
- STM32F030F4P6 microcontroller
- HX711 chip
- I2C interface at address 0x26

The STM32 handles the HX711 bit-bang protocol internally and exposes a simple I2C interface.

**These files implement the HX711 protocol directly** if you want to connect a raw HX711 chip to GPIO pins instead of using the M5Stack I2C module.

## When to Use This

Use this alternative implementation if:
- You have a **raw HX711 chip** (not the M5Stack I2C unit)
- You want to connect HX711 directly to GPIO pins
- You need custom control over HX711 gain/channel settings
- You want to understand how the HX711 protocol works

## HX711 Protocol Overview

The HX711 uses a proprietary 2-wire serial protocol:
- **DOUT** (Data Out) - Output from HX711, goes LOW when data ready
- **SCK** (Serial Clock) - Clock input to HX711, controlled by MCU

### Reading Data:
1. Wait for DOUT to go LOW (data ready)
2. Generate 25-27 clock pulses on SCK
3. Read one bit per clock pulse from DOUT (MSB first)
4. Number of pulses sets gain for next reading:
   - 25 pulses = Channel A, Gain 128
   - 26 pulses = Channel B, Gain 32
   - 27 pulses = Channel A, Gain 64

## Hardware Requirements

For raw HX711 connection:
- **SCK** → Any available GPIO (configure as output)
- **DOUT** → Any available GPIO (configure as input, no pull resistor needed)
- **Load Cell** → Connect to HX711 E+/E-/A+/A- pins
- **Power** → 3.3V or 5V to HX711 VCC

**Note**: Do NOT use PA6/PA7 for bit-bang - they have physical I2C pull-up resistors that interfere with HX711 open-drain DOUT.

## How to Use

### 1. Configure Pins

Edit `hx711_driver.c` or pass configuration:

```c
#include "hx711_driver.h"

hx711_config_t config = {
    .sck_port = gpioPortA,
    .sck_pin = 0,              // PA0 for SCK
    .dout_port = gpioPortA,
    .dout_pin = 1,             // PA1 for DOUT
    .gain = HX711_CHANNEL_A_GAIN_128
};

hx711_init(&config);
```

### 2. Read Weight

```c
int32_t raw_value;
hx711_error_t err = hx711_read_raw(&raw_value, 1000); // 1 second timeout

if (err == HX711_OK) {
    // Convert to weight using calibration
    int32_t weight_grams = (TARE_OFFSET - raw_value) / SCALE_FACTOR;
}
```

### 3. Integrate with Z-Wave Sensor

Replace the I2C code in `MultilevelSensor_interface_hx711.c`:

```c
// Remove I2C initialization
// Remove M5Stack I2C read functions

// Add HX711 driver include
#include "hx711_driver.h"

// In init function:
hx711_config_t config = { /* ... */ };
hx711_init(&config);

// In read function:
int32_t raw_value;
if (hx711_read_raw(&raw_value, 1000) == HX711_OK) {
    // Calculate weight
    int32_t weight_grams = (M5WEIGHT_TARE_OFFSET - raw_value) / M5WEIGHT_SCALE_FACTOR;
    // Report to Z-Wave
}
```

## Calibration

Calibration procedure is the same:
1. Record raw ADC value with no weight (tare offset)
2. Place known weights and record raw values
3. Calculate scale factor: `(tare - reading) / weight_grams`

See [docs/CALIBRATION.md](../docs/CALIBRATION.md) for detailed procedure.

## Advantages vs M5Stack I2C Unit

**Pros of Raw HX711**:
- More direct control over gain and channel
- Faster reading (no I2C overhead)
- Can use any GPIO pins (except PA6/PA7)
- Lower cost (raw HX711 is cheaper)

**Cons of Raw HX711**:
- Requires bit-bang protocol implementation
- More complex wiring
- Must handle timing carefully
- Occupies CPU during reading

## Technical Details

### Timing Requirements

From HX711 datasheet:
- Clock pulse width: minimum 0.2 µs (200 ns)
- Clock frequency: maximum 2.5 MHz
- DOUT setup time: 0.1 µs before SCK rising edge
- Power-down: SCK HIGH for >60 µs

### Data Format

HX711 returns 24-bit two's complement signed integer:
- Range: -8,388,608 to +8,388,607
- For load cells: reading decreases as weight increases (inverted)

### Power Modes

- **Active**: Normal operation, reading available at 10 Hz or 80 Hz (depends on RATE pin)
- **Power-down**: Set SCK HIGH for >60 µs, reduces current to <1 µA

## Example Schematic

```
Raw HX711 Chip              EFR32ZG28 (brd2705a)
┌─────────────┐            ┌──────────────────┐
│             │            │                  │
│  VCC        ├────────────┤ 3.3V             │
│  GND        ├────────────┤ GND              │
│  DOUT       ├────────────┤ PA0 (input)      │
│  SCK        ├────────────┤ PA1 (output)     │
│             │            │                  │
│  E+  ───┐   │            └──────────────────┘
│  E-  ───┤   │
│  A+  ───┤   │   Load Cell (4-wire)
│  A-  ───┘   │
│             │
└─────────────┘
```

## Troubleshooting

### DOUT Stuck HIGH
- Check load cell connections (E+/E-/A+/A-)
- Verify HX711 power (3.3V or 5V)
- Check excitation voltage (E+ to E- should be ~VCC)

### DOUT Stuck LOW
- Possible short circuit on DOUT line
- Check GPIO pin isn't configured with pull-down

### Reading Always Zero
- Load cell not connected or damaged
- Check signal voltage (A+ to A- should be ~10mV)
- Verify wiring polarity

### Unstable Readings
- Add delay between reads (100ms minimum)
- Use `hx711_read_average()` to average multiple samples
- Check for electrical noise (shield cables, good grounding)

## References

- [HX711 Datasheet](https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf)
- [Load Cell Theory](https://www.omega.com/en-us/resources/load-cells)
- [SparkFun HX711 Guide](https://learn.sparkfun.com/tutorials/load-cell-amplifier-hx711-breakout-hookup-guide)

## Contributing

If you implement this alternative approach, please share your results! Open an issue or pull request with:
- Pin configuration used
- Load cell specifications
- Any timing adjustments needed
- Performance comparison with I2C method

## License

Same license as main project.
