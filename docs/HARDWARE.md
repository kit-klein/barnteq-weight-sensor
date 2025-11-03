# Hardware Setup Guide

Complete hardware setup instructions for the BarnTeq Z-Wave Weight Sensor.

## Required Components

### 1. Development Board
**Silicon Labs xG28 Explorer Kit (brd2705a)**
- EFR32ZG28 Z-Wave 800 series SoC
- Onboard debugger
- USB-C connector
- Qwiic/STEMMA QT connector
- Two programmable buttons (BTN0, BTN1)

**Purchase**: [Silicon Labs](https://www.silabs.com/development-tools/wireless/z-wave/xg28-explorer-kit)

### 2. Weight Sensor Module
**M5Stack Weight I2C Unit (SKU: U180)**
- STM32F030F4P6 microcontroller
- HX711 24-bit ADC
- I2C interface (address 0x26)
- Qwiic/Grove compatible connectors

**Purchase**: [M5Stack Store](https://shop.m5stack.com/products/weight-i2c-unit-hx711)

**Key Specifications:**
- I2C Address: 0x26
- Supply Voltage: 3.3V - 5V
- Resolution: 24-bit
- Communication: I2C (100 kHz)

### 3. Load Cell
**SparkFun TAL220 10kg Load Cell** (or compatible)
- Capacity: 10 kg (22 lbs)
- Rated Output: 1.0±0.15 mV/V
- Input Impedance: 1000±20Ω
- Output Impedance: 1000±20Ω

**Note**: The M5Stack unit typically includes a load cell. If you have a 3-wire version, it should still work.

### 4. Cables
- **Qwiic cable** (4-pin JST-SH connector) - Included with M5Stack unit or purchase separately
- **USB-C cable** - For power and programming

## Wiring Diagram

### M5Stack Weight Unit to brd2705a (Qwiic Connector)

```
M5Stack Weight Unit          brd2705a Qwiic Connector
┌─────────────────┐         ┌──────────────────────┐
│                 │         │                      │
│  [VCC]  (Red)   ├─────────┤ 3.3V/5V             │
│  [GND]  (Black) ├─────────┤ GND                 │
│  [SDA]  (Blue)  ├─────────┤ PA7 (SDA)           │
│  [SCL]  (Yellow)├─────────┤ PA6 (SCL)           │
│                 │         │                      │
└─────────────────┘         └──────────────────────┘
```

### Load Cell to M5Stack Weight Unit

The load cell connects to the M5Stack unit via screw terminals or solder pads:

```
Load Cell Wire Colors (typical):
- Red    → E+ (Excitation +)
- Black  → E- (Excitation -)
- White  → A- (Signal -)
- Green  → A+ (Signal +)

M5Stack Terminals:
[E+] [E-] [A-] [A+]
```

**Note**: Some TAL220 load cells have only 3 wires. Verify your specific load cell pinout.

## GPIO Pin Assignments

### brd2705a Connections

| Pin | Function | Connection |
|-----|----------|------------|
| PA6 | I2C SCL  | M5Stack SCL (Yellow) |
| PA7 | I2C SDA  | M5Stack SDA (Blue) |
| PA8 | UART TX  | Serial output (debug) |
| PA9 | UART RX  | Serial input |
| BTN0 | Button 0 | Send weight report |
| BTN1 | Button 1 | Z-Wave inclusion/reset |

### Important Notes

- **PA6/PA7 have physical pull-up resistors** for I2C (required for proper operation)
- **Do NOT use PA6/PA7 for GPIO bit-bang** - they are dedicated I2C pins
- **Serial output is on UART0** (PA8/PA9) at 115200 baud

## Physical Setup

### Step 1: Connect Load Cell to M5Stack Unit

1. **Identify load cell wires**:
   - 4-wire: Red (E+), Black (E-), White (A-), Green (A+)
   - 3-wire: Verify your specific load cell datasheet

2. **Connect to screw terminals** on M5Stack unit:
   ```
   E+ ← Red wire (Excitation positive)
   E- ← Black wire (Excitation ground)
   A- ← White wire (Signal negative)
   A+ ← Green wire (Signal positive)
   ```

3. **Secure wires** - Tighten screw terminals firmly

### Step 2: Connect M5Stack Unit to brd2705a

**Option 1: Qwiic Cable (Easiest)**
1. Plug Qwiic cable into M5Stack Weight Unit
2. Plug other end into brd2705a Qwiic connector (labeled on board)
3. Done!

**Option 2: Custom Wiring**
1. Connect 4 individual wires:
   - VCC (M5Stack) → 3V3 or 5V (brd2705a)
   - GND (M5Stack) → GND (brd2705a)
   - SDA (M5Stack) → PA7 (brd2705a)
   - SCL (M5Stack) → PA6 (brd2705a)

### Step 3: Connect USB Power

1. Connect USB-C cable to brd2705a
2. Connect other end to computer or USB power supply
3. Device should power on (LED activity visible)

## Verification

### Hardware Check

Connect to serial terminal (115200 baud) and verify:

```
[I] Initializing M5Stack Weight I2C Unit
[I] Scanning for M5Stack Weight at 0x26...
[I] Direct read SUCCESS: 0xXX 0xXX 0xXX 0xXX
[I] Read REG 0x00 SUCCESS: 0xXX 0xXX 0xXX 0xXX
```

If you see these messages, **hardware is working correctly!**

### Troubleshooting

**No I2C communication (read fails)**:
- Check Qwiic cable connections
- Verify power to M5Stack unit (measure voltage at VCC/GND)
- Check I2C address: `i2cdetect` on PA6/PA7 should show device at 0x26

**Load cell readings are 0**:
- Verify load cell wires connected to correct terminals
- Check excitation voltage (E+ to E- should be ~4-5V)
- Measure signal voltage (A+ to A- should be ~8-10mV, changes with weight)

**Device reboots/unstable**:
- Check USB power supply (needs adequate current)
- Verify all ground connections secure

## Power Measurements

Typical power consumption:
- **Idle (listening)**: ~15-20 mA @ 3.3V
- **During transmission**: ~30-40 mA @ 3.3V
- **M5Stack unit**: ~5-10 mA @ 3.3V

**Total**: ~50-60 mA peak

## Mechanical Mounting

### Load Cell Installation

For accurate measurements:

1. **Mount load cell rigidly** to fixed surface
2. **Apply force to sensing area** (typically has arrow indicator)
3. **Avoid side loads** - force should be perpendicular
4. **Protect from moisture** if used outdoors

### Enclosure Recommendations

- Protect electronics from environmental factors
- Provide ventilation if using higher power modes
- Ensure load cell mechanical path is unobstructed
- Consider strain relief for cables

## Development/Debug Setup

### Serial Console Access

**macOS/Linux**:
```bash
screen /dev/tty.usbmodem* 115200
```

**Windows**:
Use PuTTY or similar serial terminal at 115200 baud

### Debug Logging

Enabled in `config/zw_log_config.h`:
- INFO, WARNING, ERROR messages on UART
- Debug messages show I2C communication
- Weight calculations and raw ADC values

## Safety Considerations

- **Do not exceed load cell capacity** (10 kg for TAL220)
- **Secure all electrical connections** before applying power
- **Avoid ESD** - handle board by edges
- **Do not modify while powered** - disconnect USB first

## Bill of Materials (BOM)

| Item | Part Number | Quantity | Est. Cost |
|------|-------------|----------|-----------|
| Dev Board | xG28 Explorer Kit (brd2705a) | 1 | $40-60 |
| Weight Sensor | M5Stack Weight I2C Unit (U180) | 1 | $15-20 |
| Load Cell | Included with M5Stack or TAL220 | 1 | $0-10 |
| Qwiic Cable | 4-pin JST-SH, various lengths | 1 | $1-3 |
| USB-C Cable | Standard USB-C | 1 | $5-10 |
| **Total** | | | **~$60-100** |

## Additional Resources

- [brd2705a Schematic](https://www.silabs.com/documents/public/schematic-files/BRD2705A-A00-schematic.pdf)
- [M5Stack Weight Unit Specs](https://docs.m5stack.com/en/unit/Unit-Weight%20I2C)
- [HX711 Datasheet](https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf)
- [TAL220 Load Cell Datasheet](https://cdn.sparkfun.com/assets/9/9/a/f/3/TAL220.pdf)

## Next Steps

Once hardware is connected and verified:
1. [Calibrate the sensor](CALIBRATION.md)
2. [Add to Home Assistant](HOMEASSISTANT.md)
