# BarnTeq Z-Wave Weight Sensor

A Z-Wave 800 series weight sensor built on Silicon Labs EFR32ZG28 using the M5Stack Weight I2C Unit (HX711 24-bit ADC with load cell interface).

## Features

- **Z-Wave 800 series** communication (908.4 MHz US frequency)
- **24-bit precision** weight measurement via HX711 ADC
- **Dual scale support**: Kilograms and Pounds
- **I2C interface** to M5Stack Weight Unit
- **Home Assistant** compatible
- **S2 Security** support
- **Always-listening** mode for reliable operation
- **Calibrated accuracy** with precision to 0.001 kg/lb

## Hardware Requirements

- **Development Board**: Silicon Labs xG28 Explorer Kit (brd2705a)
- **Weight Sensor**: [M5Stack Weight I2C Unit](https://shop.m5stack.com/products/weight-i2c-unit-hx711) (SKU: U180)
- **Load Cell**: SparkFun TAL220 10kg (or compatible)
- **Connection**: Qwiic connector (I2C on PA6/PA7)

See [docs/HARDWARE.md](docs/HARDWARE.md) for detailed wiring and setup.

## Quick Start

### 1. Hardware Setup

Connect the M5Stack Weight I2C Unit to the Qwiic connector on the brd2705a:
- **SDA** (PA7) → M5Stack SDA
- **SCL** (PA6) → M5Stack SCL
- **VCC** → 3.3V or 5V
- **GND** → Ground

### 2. Build and Flash

```bash
# Generate project (requires Silicon Labs Simplicity Studio SDK)
slc generate --with zwave_soc_multilevel_sensor.slcp

# Build
make -f zwave_soc_multilevel_sensor.Makefile -j8

# Flash
commander flash build/debug/zwave_soc_multilevel_sensor.hex
```

### 3. Calibrate

See [docs/CALIBRATION.md](docs/CALIBRATION.md) for step-by-step calibration procedure.

Current calibration values (adjust in `src/MultilevelSensor_interface_hx711.c`):
- **Scale Factor**: 33 counts per gram
- **Tare Offset**: 13,266,000 (zero reading)

### 4. Add to Z-Wave Network

1. **Factory Reset**: Press and hold BTN1 for 10+ seconds
2. **Inclusion Mode**: Short press BTN1
3. **Add in Controller**: Start inclusion in your Z-Wave controller
4. **Enter DSK PIN**: First 5 digits from `get_dsk` command (e.g., 15349)

See [docs/HOMEASSISTANT.md](docs/HOMEASSISTANT.md) for Home Assistant integration.

## Usage

### Send Weight Report

**Short press BTN0** - Sends battery level and weight sensor report to Z-Wave network

### Commands (Serial CLI)

Connect to serial terminal (115200 baud):

```
get_dsk          # Get Device Specific Key for pairing
get_region       # Check Z-Wave region (should show US)
send_reports     # Manually trigger sensor report
help             # Show all available commands
```

### Button Functions

- **BTN0 (short press)**: Send battery + weight report
- **BTN1 (short press)**: Toggle Z-Wave inclusion/exclusion mode
- **BTN1 (long press 10s)**: Factory reset

## Architecture

### Key Components

- **MultilevelSensor_interface_hx711.c** - Z-Wave sensor interface implementation
  - I2C communication with M5Stack unit
  - Weight calculation and calibration
  - Dual scale support (kg/lbs)

- **hx711_driver.c** - Low-level driver (not used with M5Stack I2C version)
  - Kept for reference/alternative implementations

- **app.c** - Main Z-Wave application
  - Event handling
  - Network management

- **app_btn_handler.c** - Button event processing

### Z-Wave Configuration

- **Device Type**: Always-listening sensor
- **Command Classes**:
  - Multilevel Sensor (weight reporting)
  - Battery (battery level reporting)
  - Association
  - Wake Up
  - Version
  - Z-Wave Plus Info

- **Sensor Type**: General Purpose (0x01)
- **Supported Scales**:
  - 0x00 - Kilogram
  - 0x01 - Pound

## Calibration

The sensor requires calibration with known weights. Default calibration based on 0, 5, and 25 lb test weights:

```c
#define M5WEIGHT_SCALE_FACTOR     33        // Counts per gram
#define M5WEIGHT_TARE_OFFSET      13266000  // Zero reading
```

**To recalibrate:**
1. Place known weights on sensor
2. Record raw ADC readings
3. Calculate new scale factor: `(reading_0lb - reading_Xlb) / weight_in_grams`
4. Update values in `src/MultilevelSensor_interface_hx711.c`

See [docs/CALIBRATION.md](docs/CALIBRATION.md) for detailed procedure.

## M5Stack Weight I2C Unit Details

- **I2C Address**: 0x26
- **Microcontroller**: STM32F030F4P6
- **ADC**: HX711 24-bit
- **Protocol**: I2C (not raw HX711 bit-bang)
- **Data Register**: 0x00 (4 bytes, little-endian signed int32)
- **Resolution**: 24-bit ADC value

The M5Stack unit contains an STM32 that handles HX711 communication internally and exposes a simple I2C interface.

## Troubleshooting

### Sensor shows percentage (%) instead of kg/lbs in Home Assistant

The SDK uses `SENSOR_NAME_GENERAL_PURPOSE` which Home Assistant interprets as percentage. **Fix in Home Assistant:**

1. Go to entity settings
2. Set **Unit of Measurement** to `kg` or `lbs`
3. Set **Device Class** to `weight`

See [docs/HOMEASSISTANT.md](docs/HOMEASSISTANT.md) for details.

### Device won't pair

- **Check region**: Run `get_region` - should show `US` (not `EU`)
- **Check proximity**: Be within 3 feet of Z-Wave controller during inclusion
- **Factory reset**: Hold BTN1 for 10+ seconds, try again

### Readings show 0 or incorrect values

- **Check I2C connection**: Verify SDA/SCL on PA6/PA7 (Qwiic connector)
- **Check power**: M5Stack unit needs 3.3V or 5V
- **Recalibrate**: See [docs/CALIBRATION.md](docs/CALIBRATION.md)

## Development

### Build Requirements

- **Silicon Labs Simplicity Studio SDK** v2025.6.2+
- **Z-Wave SDK** 7.22+
- **SLC CLI** v6.0.11+
- **GCC ARM** toolchain
- **Commander** (for flashing)

### Project Structure

```
barnteq-weight-sensor/
├── src/                    # Source files
├── include/                # Header files
├── config/                 # Configuration files
├── docs/                   # Documentation
└── zwave_soc_multilevel_sensor.slcp  # Project file
```

### Serial Debug Output

Enable verbose logging in `config/zw_log_config.h`:

```c
#define ZW_LOG_CHANNEL_DEBUG  "vcom"
#define ZW_LOG_ENABLE_APP  1
#define ZW_LOG_ENABLE_ZAF_COMMON  1
```

## Technical Specifications

- **MCU**: EFR32ZG28 (Z-Wave 800)
- **Z-Wave Frequency**: 908.4 MHz (US)
- **ADC Resolution**: 24-bit
- **Weight Range**: Depends on load cell (tested with 10kg)
- **Precision**: 0.001 kg (1 gram) or 0.002 lbs
- **I2C Speed**: 100 kHz (standard mode)
- **Power**: USB or battery (with power management)

## References

- [M5Stack Weight I2C Unit](https://shop.m5stack.com/products/weight-i2c-unit-hx711)
- [Silicon Labs Z-Wave Documentation](https://docs.silabs.com/)
- [Z-Wave Specification](https://www.z-wavealliance.org/)
- [HX711 Datasheet](https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf)

## License

[To be determined - specify your license choice]

## Contributing

Contributions welcome! Please open an issue or pull request.

## Author

BarnTeq

## Acknowledgments

- Silicon Labs for Z-Wave SDK and development tools
- M5Stack for the Weight I2C Unit design
- Home Assistant community
