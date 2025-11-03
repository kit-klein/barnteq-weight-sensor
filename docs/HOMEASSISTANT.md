# Home Assistant Integration Guide

Complete guide for integrating the BarnTeq Z-Wave Weight Sensor with Home Assistant.

## Overview

The weight sensor integrates with Home Assistant using the Z-Wave JS integration. Once paired, it provides:
- Real-time weight measurements
- Battery level monitoring
- Configurable weight limits
- Automation capabilities

## Prerequisites

### 1. Z-Wave Controller

You need a Z-Wave controller compatible with Home Assistant:
- **Z-Wave USB Stick** (recommended: Zooz ZST39 LR, Aeotec Z-Stick 7)
- **Z-Wave 800 series preferred** for optimal performance
- **US frequency** (908.4 MHz) - must match sensor region

### 2. Home Assistant Setup

**Required:**
- Home Assistant OS, Supervised, or Container installation
- Z-Wave JS integration installed and configured
- Z-Wave controller added and operational

**Installation:**
1. Go to **Settings → Devices & Services**
2. Click **Add Integration**
3. Search for **Z-Wave JS**
4. Follow setup wizard to configure your Z-Wave controller

## Adding the Sensor to Your Network

### Step 1: Prepare the Sensor

Before pairing, ensure:
1. **Sensor is powered** - Connect USB-C cable
2. **Sensor is calibrated** - See [CALIBRATION.md](CALIBRATION.md)
3. **Within range** - Place sensor within 3 feet of controller during pairing
4. **Fresh start** - If previously paired, perform factory reset:
   - Press and hold **BTN1** for **10+ seconds**
   - Watch serial output for reset confirmation

### Step 2: Start Inclusion in Home Assistant

1. **Open Home Assistant**
2. Navigate to **Settings → Devices & Services → Z-Wave JS**
3. Click **Configure** on your Z-Wave controller
4. Click **Add Device** (or **Add Node**)
5. Select **Security: S2 Authenticated** (recommended)
6. Leave the dialog open and proceed to next step

### Step 3: Put Sensor in Inclusion Mode

**Press BTN1 once** (short press) on the sensor

You should see on serial terminal:
```
[I] Starting learn mode (Network Wide Inclusion)
[I] S2 bootstrapping started
```

The sensor LED will blink to indicate it's in pairing mode.

### Step 4: Enter DSK PIN

When Home Assistant prompts for DSK PIN:

1. **Serial Command Method** (if connected to computer):
   ```bash
   # Connect to serial terminal
   screen /dev/tty.usbmodem* 115200

   # Type command:
   get_dsk

   # Output shows:
   [I] DSK: 15349-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
   ```

2. **Enter the first 5 digits** in Home Assistant: `15349`

3. **Click Confirm**

### Step 5: Complete Pairing

Home Assistant will:
1. Verify the DSK PIN
2. Exchange security keys (S2 Authenticated)
3. Interview the device (gather capabilities)
4. Create entities

**This takes 30-60 seconds.** You'll see:
```
[I] S2 key exchange complete
[I] Learn mode complete
[I] Inclusion successful
```

### Step 6: Verify Device

1. Go to **Settings → Devices & Services → Z-Wave JS**
2. You should see **BarnTeq Weight Sensor** (or similar name)
3. Click on the device to see entities:
   - **sensor.barnteq_weight_sensor_general_purpose** - Weight reading
   - **sensor.barnteq_weight_sensor_battery** - Battery level

## Fixing the Percentage Display Issue

### The Problem

By default, the weight sensor appears as a **percentage (%)** instead of **kg** or **lbs**.

This happens because the Z-Wave SDK uses `SENSOR_NAME_GENERAL_PURPOSE` (type 0x01), which Home Assistant interprets as a generic percentage sensor.

### The Solution

**Customize the entity in Home Assistant UI:**

1. **Navigate to entity**:
   - Go to **Settings → Devices & Services → Z-Wave JS**
   - Click on your **BarnTeq Weight Sensor** device
   - Click on **sensor.barnteq_weight_sensor_general_purpose**

2. **Edit entity settings**:
   - Click the **Settings icon** (gear) in the top right
   - Scroll to **Unit of measurement**
   - Enter: `kg` (or `lbs` if you prefer pounds)

3. **Set device class**:
   - Scroll to **Device class**
   - Select: `weight`

4. **Save changes**

5. **Refresh Home Assistant** (or wait a few seconds)

The sensor should now display as **kg** or **lbs** with proper icon and formatting.

### Making It Permanent

These customizations are stored in Home Assistant and persist across:
- Home Assistant restarts
- Sensor reboots
- Firmware updates

**Note**: You do NOT need to modify firmware to fix this. The sensor correctly reports weight in kg/lbs - this is purely a display customization.

## Configuration Parameters

The sensor exposes two configuration parameters you can adjust in Home Assistant.

### Parameter 1: Minimum Weight Limit

**Purpose**: Set a minimum threshold (in kilograms)

**Access in Home Assistant**:
1. Go to device page
2. Click **Configure** button
3. Find **Parameter 1: Minimum weight limit**
4. Set value (0-200 kg)
5. Click **Save**

**Use cases**:
- Filter out noise below a certain weight
- Trigger automations only when weight exceeds minimum
- Ignore small items accidentally placed on scale

**Default**: 0 kg (no minimum)

### Parameter 2: Maximum Weight Limit

**Purpose**: Set a maximum threshold (in kilograms)

**Access in Home Assistant**:
1. Go to device page
2. Click **Configure** button
3. Find **Parameter 2: Maximum weight limit**
4. Set value (1-500 kg)
5. Click **Save**

**Use cases**:
- Prevent overload warnings
- Cap reported values at scale capacity
- Trigger alerts when limit exceeded

**Default**: 100 kg

### Notes on Configuration

- Values are in **kilograms only** (regardless of display preference)
- Changes take effect immediately
- Configuration is stored on the sensor (persists through power cycles)

## Using the Sensor

### Reading Weight

The sensor reports weight in two ways:

**1. Manual Trigger**:
- **Press BTN0** on the sensor
- Sends battery level + weight report to network
- Updates Home Assistant entities within 1-2 seconds

**2. Periodic Reports**:
- Sensor can be configured for automatic reporting (future enhancement)
- Currently uses manual trigger via BTN0

### Checking Battery Level

Battery entity shows percentage:
- **100%**: Powered via USB
- **0-99%**: Battery level (if battery-powered in future)

**Current implementation**: Always shows 100% (USB powered)

## Automation Examples

### Example 1: Weight Threshold Alert

Send notification when weight exceeds 50 lbs:

```yaml
alias: Heavy Weight Alert
description: Alert when weight exceeds 50 lbs
trigger:
  - platform: numeric_state
    entity_id: sensor.barnteq_weight_sensor_general_purpose
    above: 22.68  # 50 lbs in kg
action:
  - service: notify.notify
    data:
      message: "Weight sensor detected {{ states('sensor.barnteq_weight_sensor_general_purpose') }} kg (over 50 lbs)"
      title: Heavy Weight Alert
mode: single
```

### Example 2: Empty Scale Detection

Detect when scale returns to empty:

```yaml
alias: Scale Emptied
description: Trigger when weight returns to zero
trigger:
  - platform: numeric_state
    entity_id: sensor.barnteq_weight_sensor_general_purpose
    below: 0.5  # 500 grams tolerance
action:
  - service: notify.notify
    data:
      message: "Scale is now empty"
mode: single
```

### Example 3: Weight Logging

Log weight to spreadsheet or database:

```yaml
alias: Log Weight Measurement
description: Log every weight reading to Google Sheets
trigger:
  - platform: state
    entity_id: sensor.barnteq_weight_sensor_general_purpose
condition:
  - condition: template
    value_template: "{{ trigger.to_state.state != trigger.from_state.state }}"
action:
  - service: notify.google_sheets
    data:
      message: |
        Timestamp: {{ now() }}
        Weight: {{ states('sensor.barnteq_weight_sensor_general_purpose') }} kg
mode: queued
```

### Example 4: Feed Bin Monitoring

Monitor livestock feed levels (assuming sensor under bin):

```yaml
alias: Feed Bin Low Alert
description: Alert when feed bin weight drops below 10 kg
trigger:
  - platform: numeric_state
    entity_id: sensor.barnteq_weight_sensor_general_purpose
    below: 10
    for:
      minutes: 5
action:
  - service: notify.mobile_app
    data:
      message: "Feed bin is low: {{ states('sensor.barnteq_weight_sensor_general_purpose') }} kg remaining"
      title: Feed Bin Alert
mode: single
```

## Troubleshooting

### Device Won't Pair

**Symptoms**: Inclusion starts but never completes, or fails immediately.

**Fixes**:

1. **Check Z-Wave region**:
   - Sensor must be configured for **US** (908.4 MHz)
   - Controller must also be US frequency
   - Verify via serial: `get_region` should show `US`

2. **Factory reset sensor**:
   - Hold **BTN1** for 10+ seconds
   - Try pairing again

3. **Check proximity**:
   - Move sensor within 3 feet of controller
   - Remove any metal obstructions

4. **Verify controller is working**:
   - Try pairing a different Z-Wave device
   - Restart Z-Wave JS integration if needed

5. **Check sensor power**:
   - Ensure USB cable connected
   - Verify power LED is on

### DSK PIN Not Accepted

**Symptoms**: Home Assistant rejects the DSK PIN.

**Fixes**:

1. **Verify PIN format**:
   - Use only the **first 5 digits**
   - Example: If DSK is `15349-12345-...`, enter `15349`

2. **Get fresh DSK**:
   ```bash
   # Connect to serial
   screen /dev/tty.usbmodem* 115200

   # Type:
   get_dsk

   # Use the first 5 digits shown
   ```

3. **Try different security mode**:
   - If S2 Authenticated fails, try S2 Unauthenticated
   - Or fall back to S0 (less secure but compatible)

### Sensor Shows as Unavailable

**Symptoms**: Entity shows "Unavailable" or "Unknown" state.

**Fixes**:

1. **Check sensor power**:
   - Verify USB connected
   - Check serial output for boot messages

2. **Force update**:
   - Press **BTN0** to trigger report
   - Should update within 2 seconds

3. **Check Z-Wave network health**:
   - Go to Z-Wave JS settings
   - Run **Heal Network**
   - Wait 5-10 minutes

4. **Re-interview device**:
   - Go to device page in Home Assistant
   - Click **Re-interview Device**
   - Wait for completion

### Weight Reading is Incorrect

**Symptoms**: Shows wrong value or doesn't change with weight.

**Fixes**:

1. **Recalibrate sensor**:
   - See [CALIBRATION.md](CALIBRATION.md)
   - Update `M5WEIGHT_SCALE_FACTOR` and `M5WEIGHT_TARE_OFFSET`

2. **Check I2C connection**:
   - Verify Qwiic cable connected
   - Check serial output for I2C errors

3. **Check load cell**:
   - Measure voltage between A+ and A- (~9mV typical)
   - Verify load cell not damaged or overloaded

4. **Verify units**:
   - Check if expecting kg but showing lbs (or vice versa)
   - Customize entity unit of measurement

### Updates are Slow

**Symptoms**: Takes many seconds for weight to update in Home Assistant.

**Fixes**:

1. **Check network health**:
   - Run Z-Wave network heal
   - Ensure good signal strength

2. **Reduce polling interval** (advanced):
   - Modify Z-Wave JS configuration
   - Increase poll frequency for sensor

3. **Use manual trigger**:
   - Press BTN0 for immediate update
   - More reliable than waiting for automatic reports

## Advanced Configuration

### Custom Entity Names

Rename entities for clarity:

1. Click on entity
2. Click settings icon (gear)
3. Edit **Name** and **Entity ID**
4. Save

**Example**:
- Old: `sensor.barnteq_weight_sensor_general_purpose`
- New: `sensor.livestock_scale_weight`

### Creating Dashboard Cards

**Simple Gauge Card**:

```yaml
type: gauge
entity: sensor.barnteq_weight_sensor_general_purpose
name: Livestock Scale
min: 0
max: 100
unit: kg
severity:
  green: 0
  yellow: 50
  red: 80
```

**Detailed Entity Card**:

```yaml
type: entities
entities:
  - entity: sensor.barnteq_weight_sensor_general_purpose
    name: Current Weight
  - entity: sensor.barnteq_weight_sensor_battery
    name: Battery Level
title: BarnTeq Weight Sensor
show_header_toggle: false
```

**History Graph**:

```yaml
type: history-graph
entities:
  - entity: sensor.barnteq_weight_sensor_general_purpose
hours_to_show: 24
title: Weight History (24h)
```

### Integrating with Node-RED

For complex automations, use Node-RED:

1. **Install Node-RED** via Home Assistant Add-on Store
2. **Add Z-Wave entity node**
3. **Create flow** for weight-based logic
4. **Trigger actions** based on weight changes

## Multiple Sensors

You can add multiple weight sensors to the same network:

1. **Pair each sensor individually** following the steps above
2. **Each will have unique DSK PIN** - use `get_dsk` command for each
3. **Customize entity names** to distinguish them:
   - Sensor 1: `sensor.feed_bin_weight`
   - Sensor 2: `sensor.water_tank_weight`
   - Sensor 3: `sensor.livestock_pen_weight`

## Removing the Sensor

To unpair and remove from network:

### Method 1: Home Assistant Exclusion

1. **Start exclusion** in Home Assistant:
   - Go to **Settings → Devices & Services → Z-Wave JS**
   - Click **Configure**
   - Click **Remove Device** (or **Remove Node**)

2. **Press BTN1** on sensor (short press)

3. **Wait for confirmation**:
   - Serial output: `[I] Learn mode complete`
   - Home Assistant removes device

4. **Device is now unpaired**

### Method 2: Factory Reset

**Warning**: This removes device from network AND erases all configuration.

1. **Press and hold BTN1** for **10+ seconds**
2. **Release when LED blinks rapidly**
3. **Serial output** shows:
   ```
   [I] Factory reset initiated
   [I] Clearing network data
   [I] Reset complete
   ```
4. **Device is now in factory state**

## Backup and Restore

### Backing Up Z-Wave Network

Home Assistant automatically backs up Z-Wave configuration:

1. Go to **Settings → System → Backups**
2. Click **Create Backup**
3. Backup includes all Z-Wave devices and configuration

### Restoring After Failure

If controller fails or you migrate to new system:

1. **Restore backup** on new Home Assistant installation
2. **Z-Wave JS will restore** all devices including weight sensor
3. **No re-pairing needed** if using same controller hardware
4. **Configuration parameters preserved**

### Moving to New Controller

If changing Z-Wave controller hardware:

1. **Unpair from old controller** (Method 1 above)
2. **Set up new controller** in Home Assistant
3. **Re-pair sensor** following pairing steps
4. **Reconfigure entity customizations** (names, units)

## Performance Optimization

### Improving Response Time

1. **Ensure strong signal**:
   - Place controller and sensor closer together
   - Add Z-Wave repeaters if needed

2. **Use always-listening mode** (already enabled):
   - Device responds immediately to queries
   - No wake-up delay

3. **Minimize network traffic**:
   - Reduce polling frequency for other devices
   - Prioritize sensor in Z-Wave routing

### Battery Life (Future Enhancement)

Current firmware runs on USB power. For battery operation:

- Would need power management code
- Sleep mode between readings
- Wake-up on button press or schedule
- Estimated battery life: 6-12 months (CR2032 with daily readings)

## Security Considerations

### S2 Security

The sensor supports **S2 Authenticated** security:

- **Encrypted communication** between sensor and controller
- **Authentication** prevents impersonation
- **Replay protection** prevents message replay attacks

**Best practice**: Always use S2 security when pairing.

### Network Security

Protect your Z-Wave network:

1. **Use strong DSK PIN** (device-specific, cannot be changed)
2. **Enable Z-Wave encryption** in Home Assistant
3. **Secure Home Assistant** with strong password
4. **Keep firmware updated** on controller and devices

### Physical Security

Since sensor uses USB power:

- **Secure USB connection** to prevent unplugging
- **Protect serial port** from unauthorized access
- **Limit physical access** to BTN0/BTN1

## Support and Debugging

### Enable Z-Wave Logging

For troubleshooting, enable verbose logging:

1. **Edit Home Assistant configuration.yaml**:
   ```yaml
   logger:
     default: info
     logs:
       homeassistant.components.zwave_js: debug
       zwave_js_server: debug
   ```

2. **Restart Home Assistant**

3. **Check logs**:
   - Go to **Settings → System → Logs**
   - Look for Z-Wave JS messages
   - Filter by device node ID

### Serial Console Debugging

Monitor sensor activity via serial:

```bash
# Connect to sensor
screen /dev/tty.usbmodem* 115200

# Available commands:
get_dsk          # Show DSK for pairing
get_region       # Check Z-Wave region (US/EU)
send_reports     # Manually trigger report
help             # Show all commands
```

### Common Serial Messages

**Normal operation**:
```
[I] Initializing M5Stack Weight I2C Unit
[I] Direct read SUCCESS: 0xXX 0xXX 0xXX 0xXX
[I] Raw data: 0xXX 0xXX 0xXX 0xXX = 13266124 (little-endian)
[I] Calculated weight: 2268 grams
[D] Weight: 2.268 kg
```

**Pairing**:
```
[I] Starting learn mode (Network Wide Inclusion)
[I] S2 bootstrapping started
[I] S2 key exchange complete
[I] Learn mode complete
```

**Errors**:
```
[E] I2C read failed
[W] Sensor not responding
[E] Z-Wave transmission failed
```

## Additional Resources

- [Z-Wave JS Documentation](https://zwave-js.github.io/node-zwave-js/)
- [Home Assistant Z-Wave Integration](https://www.home-assistant.io/integrations/zwave_js/)
- [Z-Wave Alliance](https://www.z-wavealliance.org/)
- [Hardware Setup Guide](HARDWARE.md)
- [Calibration Guide](CALIBRATION.md)

## FAQ

**Q: Can I use this sensor with other Z-Wave controllers (SmartThings, Hubitat, etc.)?**

A: Yes! The sensor follows Z-Wave standards and works with any certified Z-Wave controller. However, you may need to manually configure entity units/types.

**Q: What is the maximum range?**

A: Typical Z-Wave range is 100-300 feet (line of sight). Through walls/obstacles, expect 30-100 feet. Use Z-Wave repeaters to extend range.

**Q: Can I read weight remotely (outside home network)?**

A: Yes, if you expose Home Assistant to the internet (via Nabu Casa or reverse proxy). The Z-Wave network itself is local only.

**Q: How accurate is the sensor?**

A: After calibration, typical accuracy is ±0.1-0.5% of full scale. For a 10kg load cell, that's ±10-50 grams.

**Q: Can I use a different load cell?**

A: Yes! Any 4-wire or 3-wire load cell compatible with HX711 will work. You'll need to recalibrate after changing load cells.

**Q: Does this work with Z-Wave 500 series controllers?**

A: Yes, the sensor is backward compatible with Z-Wave 500/700 series controllers. However, 800 series offers better range and performance.

**Q: Why percentage instead of kg/lbs?**

A: The Z-Wave SDK uses `SENSOR_NAME_GENERAL_PURPOSE` which is interpreted as percentage by some controllers. This is fixed by customizing the entity in Home Assistant (see "Fixing the Percentage Display Issue" above).

**Q: Can I power this with batteries instead of USB?**

A: Not in the current firmware. Battery operation requires power management code (sleep/wake cycles). This is a possible future enhancement.
