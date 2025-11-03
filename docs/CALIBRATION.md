# Calibration Guide

Complete step-by-step calibration procedure for accurate weight measurements.

## Overview

The weight sensor requires calibration with known weights to convert raw ADC values to actual weight measurements. The M5Stack Weight I2C Unit outputs 24-bit signed integer values that must be scaled and offset to produce accurate readings.

## What You Need

### Required Items
- **Calibrated test weights** - Known accurate weights
  - Minimum 2 weights (ideally 3-4 for better accuracy)
  - Recommended: 0 lbs (no weight), 5 lbs, 25 lbs
  - Or metric: 0 kg, 2 kg, 10 kg
  - Can use household items (verified on accurate scale)

### Recommended Tools
- Serial terminal access (screen, PuTTY, etc.)
- Calculator or spreadsheet
- Notebook for recording values

## Calibration Theory

The relationship between ADC reading and weight is linear:

```
Weight (grams) = (Tare_Offset - Raw_Reading) / Scale_Factor
```

Where:
- **Raw_Reading**: 24-bit ADC value from M5Stack unit
- **Tare_Offset**: ADC reading with zero weight
- **Scale_Factor**: ADC counts per gram
- **Note**: Reading *decreases* as weight *increases* (inverted load cell)

## Current Calibration Values

Default values (from 0, 5, 25 lb calibration):

```c
#define M5WEIGHT_SCALE_FACTOR     33        // Counts per gram
#define M5WEIGHT_TARE_OFFSET      13266000  // Zero reading (no load)
```

These are defined in `src/MultilevelSensor_interface_hx711.c` lines 55-56.

## Step-by-Step Calibration Procedure

### Step 1: Prepare the Sensor

1. **Ensure stable mounting**:
   - Load cell should be rigidly mounted
   - Force applied perpendicular to sensor
   - No side loads or vibration

2. **Connect to serial terminal**:
   ```bash
   screen /dev/tty.usbmodem* 115200
   ```

3. **Verify sensor is working**:
   - You should see boot messages
   - I2C communication successful
   - No error messages

### Step 2: Collect Zero Reading (Tare)

1. **Remove all weight** from the load cell
2. **Press BTN0** (short press) to trigger a reading
3. **Record the raw value** from serial output:
   ```
   [D] Raw data: 0xAB 0x8C 0xCA 0x00 = 13266124 (little-endian)
   ```
   Record this number (e.g., **13,266,124**)

4. **Repeat 3-5 times** and average for better accuracy:
   ```
   Reading 1: 13,267,217
   Reading 2: 13,266,345
   Reading 3: 13,264,811
   Average:   13,266,124  ← This is your TARE_OFFSET
   ```

### Step 3: Collect Readings with Known Weights

For each test weight:

1. **Place weight on load cell**
2. **Wait 2-3 seconds** for stabilization
3. **Press BTN0** to trigger reading
4. **Record raw value** from serial output
5. **Repeat 3 times** and average

**Example readings (from actual calibration)**:

| Weight | Reading 1 | Reading 2 | Reading 3 | Average |
|--------|-----------|-----------|-----------|---------|
| 0 lbs  | 13,267,217 | 13,266,345 | 13,264,811 | **13,266,124** |
| 5 lbs  | 13,211,215 | 13,208,944 | 13,209,366 | **13,209,842** |
| 25 lbs | 12,890,134 | 12,891,844 | 12,892,624 | **12,891,691** |

### Step 4: Calculate Scale Factor

Using your collected data:

1. **Calculate total change in counts**:
   ```
   Count_Change = Tare_Reading - Heaviest_Weight_Reading

   Example:
   Count_Change = 13,266,124 - 12,891,691 = 374,433 counts
   ```

2. **Convert weight to grams**:
   ```
   Weight_Grams = Weight_lbs × 453.592

   Example (25 lbs):
   Weight_Grams = 25 × 453.592 = 11,339.8 grams
   ```

3. **Calculate scale factor**:
   ```
   Scale_Factor = Count_Change / Weight_Grams

   Example:
   Scale_Factor = 374,433 / 11,339.8 = 33.02 counts/gram
   ```

4. **Round to nearest integer**:
   ```
   Scale_Factor = 33 counts/gram
   ```

### Step 5: Update Firmware

Edit `src/MultilevelSensor_interface_hx711.c`:

```c
// Calibration values (adjust these with a known weight)
// Scale: ~33 counts per gram (374,433 counts for 25 lbs = 11,339.8g)
#define M5WEIGHT_SCALE_FACTOR     33        // Your calculated value
#define M5WEIGHT_TARE_OFFSET      13266000  // Your tare reading
```

### Step 6: Rebuild and Flash

```bash
# Rebuild firmware
make -f zwave_soc_multilevel_sensor.Makefile -j8

# Flash to device
commander flash build/debug/zwave_soc_multilevel_sensor.hex
```

### Step 7: Verify Calibration

Test with your known weights:

1. **Place each test weight** on sensor
2. **Press BTN0** to get reading
3. **Check serial output**:
   ```
   [D] Calculated weight: 2268 grams
   [D] Weight: 2.268 kg
   ```
4. **Verify accuracy** - should match known weight ±1-2%

## Advanced Calibration

### Two-Point Calibration

For basic accuracy, use two points (0 and max weight):

```
Scale_Factor = (Tare_Reading - Max_Weight_Reading) / Max_Weight_Grams
```

### Multi-Point Calibration

For better linearity, use 3+ weights and calculate average scale factor:

```
For each weight pair:
  Scale_i = (Reading_A - Reading_B) / (Weight_B - Weight_A)

Final_Scale = Average(Scale_1, Scale_2, Scale_3, ...)
```

### Temperature Compensation

Load cells can drift with temperature. For critical applications:

1. **Calibrate at operating temperature**
2. **Recalibrate if environment changes significantly**
3. **Consider temperature sensor** for compensation

## Calibration Spreadsheet

Example calculation in spreadsheet format:

| Test Weight | Readings | Average | Δ from Tare | Weight (g) | Counts/g |
|-------------|----------|---------|-------------|------------|----------|
| 0 lbs       | 13,267,217<br>13,266,345<br>13,264,811 | 13,266,124 | 0 | 0 | - |
| 5 lbs       | 13,211,215<br>13,208,944<br>13,209,366 | 13,209,842 | 56,282 | 2,267.96 | 24.81 |
| 25 lbs      | 12,890,134<br>12,891,844<br>12,892,624 | 12,891,691 | 374,433 | 11,339.80 | 33.02 |

**Average Scale Factor**: (24.81 + 33.02) / 2 = **28.9** counts/gram

**Or use highest weight**: **33** counts/gram (more accurate for full range)

## Troubleshooting

### Readings are unstable
- **Mechanical vibration** - Ensure rigid mounting
- **Air currents** - Shield sensor from drafts
- **Electrical noise** - Check grounding, shielding
- **Poor connections** - Verify all wiring secure

### Scale factor seems wrong
- **Verify known weights** - Use certified weights if possible
- **Check load cell capacity** - Don't exceed rated capacity
- **Verify wiring** - A+/A-/E+/E- must be correct
- **Check for damage** - Overload can damage load cell

### Zero drift
- **Temperature changes** - Let sensor stabilize
- **Mechanical stress** - Check mounting
- **Aging** - Recalibrate periodically

### Non-linear response
- **Exceeding capacity** - Use smaller weights
- **Poor load cell** - Try different load cell
- **Binding** - Ensure free movement

## Validation Procedure

After calibration, validate with these tests:

### 1. Repeatability Test
Place same weight 10 times, remove between each:
- **Acceptable**: ±0.5% variation
- **Good**: ±0.2% variation
- **Excellent**: ±0.1% variation

### 2. Linearity Test
Test multiple weights across range:
- Plot weight vs reading
- Should be straight line
- R² > 0.999 is excellent

### 3. Hysteresis Test
Increase weight stepwise, then decrease:
- Readings should match going up and down
- **Acceptable**: <1% difference

### 4. Long-term Stability
Leave constant weight for 1 hour:
- Reading should remain stable
- **Acceptable**: <0.5% drift per hour

## Recalibration Schedule

Recommended recalibration intervals:

- **Initial**: After assembly
- **Break-in**: After 1 week of use
- **Regular**: Every 3-6 months (depending on usage)
- **After events**:
  - Overload condition
  - Physical shock or drop
  - Significant temperature change
  - Moving/remounting sensor

## Example Code Changes

Complete example of calibration values:

```c
// In src/MultilevelSensor_interface_hx711.c

// Calibration values (calibrated 2025-01-03 with 0, 5, 25 lbs)
// Test conditions: 20°C, TAL220 10kg load cell
// Scale: 33.02 counts per gram (374,433 counts for 25 lbs)
// Linearity: R² = 0.9998
#define M5WEIGHT_SCALE_FACTOR     33        // Counts per gram
#define M5WEIGHT_TARE_OFFSET      13266124  // Zero reading (no load)

// Conversion factor: 1 kg = 2.20462 lbs
#define KG_TO_LB_FACTOR        2204620  // Fixed point: 2.20462 * 1000000
```

## Quick Reference Card

Print this for reference:

```
┌─────────────────────────────────────────┐
│    CALIBRATION QUICK REFERENCE          │
├─────────────────────────────────────────┤
│ 1. Zero reading (no weight): __________ │
│ 2. Test weight 1: ______ lbs/kg        │
│    Reading: __________                  │
│ 3. Test weight 2: ______ lbs/kg        │
│    Reading: __________                  │
│ 4. Calculate:                           │
│    Δ = Tare - Reading                   │
│    Scale = Δ / Weight_grams             │
│ 5. Update firmware                      │
│ 6. Test and verify                      │
└─────────────────────────────────────────┘
```

## Additional Resources

- [Load Cell Theory](https://www.omega.com/en-us/resources/load-cells)
- [HX711 Application Notes](https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf)
- [Calibration Best Practices](https://www.nist.gov/pml/weights-and-measures)
