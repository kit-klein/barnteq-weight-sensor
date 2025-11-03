/***************************************************************************//**
 * @file MultilevelSensor_interface_hx711.c
 * @brief M5Stack Weight I2C Unit Interface for Z-Wave Multilevel Sensor
 * @copyright 2025
 *******************************************************************************
 * # License
 * <b>Copyright 2025 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

// -----------------------------------------------------------------------------
//                   Includes
// -----------------------------------------------------------------------------
#include <string.h>
#include <stddef.h>
#include <stdbool.h>
#include "zpal_log.h"
#include <cc_multilevel_sensor_config.h>
#include "ZW_typedefs.h"
#include "sl_status.h"
#include "em_gpio.h"
#include "em_cmu.h"
#include "em_i2c.h"

// -----------------------------------------------------------------------------
//                Macros and Typedefs
// -----------------------------------------------------------------------------

// M5Stack Weight I2C Unit Configuration
#define M5WEIGHT_I2C_ADDR       0x26    // I2C address
#define M5WEIGHT_I2C_PERIPHERAL I2C0    // Use I2C0

// I2C GPIO Configuration for brd2705a (Qwiic connector)
#define I2C_SCL_PORT  gpioPortA
#define I2C_SCL_PIN   6  // PA6 = SCL
#define I2C_SDA_PORT  gpioPortA
#define I2C_SDA_PIN   7  // PA7 = SDA

// Common register addresses to try (will discover via testing)
#define REG_WEIGHT_DATA   0x00  // Typical data register
#define REG_ADC_RAW       0x10  // Raw ADC value
#define REG_BUTTON        0x20  // Button state
#define REG_CALIBRATION   0x30  // Calibration

// Calibration values (calibrated with 0, 5, 25 lbs test weights)
// Scale: ~33 counts per gram (374,433 counts for 25 lbs = 11,339.8g)
#define M5WEIGHT_SCALE_FACTOR     33      // Counts per gram
#define M5WEIGHT_TARE_OFFSET      13266000  // Zero reading (no load)

// Conversion factor: 1 kg = 2.20462 lbs
#define KG_TO_LB_FACTOR        2204620  // Fixed point: 2.20462 * 1000000

// Z-Wave Multilevel Sensor scales for weight (from Z-Wave spec)
#define SENSOR_SCALE_KILOGRAM  0x00  // Weight in kg
#define SENSOR_SCALE_POUND     0x01  // Weight in lbs

// -----------------------------------------------------------------------------
//                Global Variables
// -----------------------------------------------------------------------------

static bool m5weight_initialized = false;

// -----------------------------------------------------------------------------
//              Private Function Prototypes
// -----------------------------------------------------------------------------

static sl_status_t i2c_write_read(uint8_t addr, uint8_t *wr_data, uint8_t wr_len,
                                   uint8_t *rd_data, uint8_t rd_len);
static sl_status_t i2c_read(uint8_t addr, uint8_t *data, uint8_t len);

// -----------------------------------------------------------------------------
//              Private Function Definitions
// -----------------------------------------------------------------------------

/**
 * @brief Initialize I2C peripheral
 */
static void i2c_init(void)
{
  // Enable clocks
  CMU_ClockEnable(cmuClock_I2C0, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  // Configure GPIO pins for I2C
  GPIO_PinModeSet(I2C_SCL_PORT, I2C_SCL_PIN, gpioModeWiredAndPullUpFilter, 1);
  GPIO_PinModeSet(I2C_SDA_PORT, I2C_SDA_PIN, gpioModeWiredAndPullUpFilter, 1);

  // Route I2C pins
  GPIO->I2CROUTE[0].ROUTEEN = GPIO_I2C_ROUTEEN_SDAPEN | GPIO_I2C_ROUTEEN_SCLPEN;
  GPIO->I2CROUTE[0].SDAROUTE = (I2C_SDA_PORT << _GPIO_I2C_SDAROUTE_PORT_SHIFT)
                              | (I2C_SDA_PIN << _GPIO_I2C_SDAROUTE_PIN_SHIFT);
  GPIO->I2CROUTE[0].SCLROUTE = (I2C_SCL_PORT << _GPIO_I2C_SCLROUTE_PORT_SHIFT)
                              | (I2C_SCL_PIN << _GPIO_I2C_SCLROUTE_PIN_SHIFT);

  // Initialize I2C peripheral
  I2C_Init_TypeDef i2cInit = I2C_INIT_DEFAULT;
  i2cInit.freq = I2C_FREQ_STANDARD_MAX;  // 100 kHz
  I2C_Init(M5WEIGHT_I2C_PERIPHERAL, &i2cInit);
}

/**
 * @brief Write then read from I2C device
 */
static sl_status_t i2c_write_read(uint8_t addr, uint8_t *wr_data, uint8_t wr_len,
                                   uint8_t *rd_data, uint8_t rd_len)
{
  I2C_TransferSeq_TypeDef seq;
  I2C_TransferReturn_TypeDef ret;

  seq.addr = addr << 1;
  seq.flags = I2C_FLAG_WRITE_READ;
  seq.buf[0].data = wr_data;
  seq.buf[0].len = wr_len;
  seq.buf[1].data = rd_data;
  seq.buf[1].len = rd_len;

  ret = I2C_TransferInit(M5WEIGHT_I2C_PERIPHERAL, &seq);

  while (ret == i2cTransferInProgress) {
    ret = I2C_Transfer(M5WEIGHT_I2C_PERIPHERAL);
  }

  if (ret != i2cTransferDone) {
    ZPAL_LOG_ERROR(ZPAL_LOG_APP, "I2C write_read failed: %d\n", ret);
    return SL_STATUS_TRANSMIT;
  }

  return SL_STATUS_OK;
}

/**
 * @brief Read from I2C device
 */
static sl_status_t i2c_read(uint8_t addr, uint8_t *data, uint8_t len)
{
  I2C_TransferSeq_TypeDef seq;
  I2C_TransferReturn_TypeDef ret;

  seq.addr = addr << 1;
  seq.flags = I2C_FLAG_READ;
  seq.buf[0].data = data;
  seq.buf[0].len = len;

  ret = I2C_TransferInit(M5WEIGHT_I2C_PERIPHERAL, &seq);

  while (ret == i2cTransferInProgress) {
    ret = I2C_Transfer(M5WEIGHT_I2C_PERIPHERAL);
  }

  if (ret != i2cTransferDone) {
    ZPAL_LOG_ERROR(ZPAL_LOG_APP, "I2C read failed: %d\n", ret);
    return SL_STATUS_TRANSMIT;
  }

  return SL_STATUS_OK;
}

// -----------------------------------------------------------------------------
//              Public Function Definitions
// -----------------------------------------------------------------------------

bool
cc_multilevel_sensor_endpoint_0_weight_interface_init(void)
{
  ZPAL_LOG_INFO(ZPAL_LOG_APP, "Initializing M5Stack Weight I2C Unit\n");

  // Initialize I2C
  i2c_init();

  // Test I2C communication
  uint8_t test_data[4];
  sl_status_t status;

  ZPAL_LOG_INFO(ZPAL_LOG_APP, "Scanning for M5Stack Weight at 0x%02X...\n", M5WEIGHT_I2C_ADDR);

  // Try direct read (no register address)
  status = i2c_read(M5WEIGHT_I2C_ADDR, test_data, 4);
  if (status == SL_STATUS_OK) {
    ZPAL_LOG_INFO(ZPAL_LOG_APP, "Direct read SUCCESS: 0x%02X 0x%02X 0x%02X 0x%02X\n",
                  test_data[0], test_data[1], test_data[2], test_data[3]);
  } else {
    ZPAL_LOG_WARNING(ZPAL_LOG_APP, "Direct read failed\n");
  }

  // Try reading from register 0x00
  uint8_t reg = REG_WEIGHT_DATA;
  status = i2c_write_read(M5WEIGHT_I2C_ADDR, &reg, 1, test_data, 4);
  if (status == SL_STATUS_OK) {
    int32_t val_le = test_data[0] | (test_data[1] << 8) | (test_data[2] << 16) | (test_data[3] << 24);
    int32_t val_be = (test_data[0] << 24) | (test_data[1] << 16) | (test_data[2] << 8) | test_data[3];
    ZPAL_LOG_INFO(ZPAL_LOG_APP, "Read REG 0x%02X SUCCESS: 0x%02X 0x%02X 0x%02X 0x%02X\n",
                  reg, test_data[0], test_data[1], test_data[2], test_data[3]);
    ZPAL_LOG_INFO(ZPAL_LOG_APP, "  Little-endian: %d, Big-endian: %d\n", val_le, val_be);
    m5weight_initialized = true;
    return true;
  } else {
    ZPAL_LOG_WARNING(ZPAL_LOG_APP, "Read REG 0x%02X failed\n", reg);
  }

  // Try reading from register 0x10
  reg = REG_ADC_RAW;
  status = i2c_write_read(M5WEIGHT_I2C_ADDR, &reg, 1, test_data, 4);
  if (status == SL_STATUS_OK) {
    ZPAL_LOG_INFO(ZPAL_LOG_APP, "Read REG 0x%02X SUCCESS: 0x%02X 0x%02X 0x%02X 0x%02X\n",
                  reg, test_data[0], test_data[1], test_data[2], test_data[3]);
    m5weight_initialized = true;
    return true;
  } else {
    ZPAL_LOG_WARNING(ZPAL_LOG_APP, "Read REG 0x%02X failed\n", reg);
  }

  ZPAL_LOG_ERROR(ZPAL_LOG_APP, "Failed to communicate with M5Stack Weight Unit!\n");
  m5weight_initialized = false;
  return false;
}

bool
cc_multilevel_sensor_endpoint_0_weight_interface_deinit(void)
{
  ZPAL_LOG_DEBUG(ZPAL_LOG_APP, "Deinitializing M5Stack Weight I2C Unit\n");
  m5weight_initialized = false;
  return true;
}

bool
cc_multilevel_sensor_endpoint_0_weight_interface_read_value(sensor_read_result_t* o_result, uint8_t i_scale)
{
  ZPAL_LOG_DEBUG(ZPAL_LOG_APP, "=== Reading M5Stack Weight (scale=%d) ===\n", i_scale);

  if (!m5weight_initialized) {
    ZPAL_LOG_ERROR(ZPAL_LOG_APP, "M5Stack Weight not initialized\n");
    return false;
  }

  // Read weight data (trying register 0x00 first)
  uint8_t reg = REG_WEIGHT_DATA;
  uint8_t data[4];
  sl_status_t status = i2c_write_read(M5WEIGHT_I2C_ADDR, &reg, 1, data, 4);

  if (status != SL_STATUS_OK) {
    ZPAL_LOG_ERROR(ZPAL_LOG_APP, "Failed to read weight data\n");
    return false;
  }

  // Parse as 32-bit signed little-endian value (M5Stack format)
  int32_t raw_value = data[0] | (data[1] << 8) | (data[2] << 16) | (data[3] << 24);

  ZPAL_LOG_DEBUG(ZPAL_LOG_APP, "Raw data: 0x%02X 0x%02X 0x%02X 0x%02X = %d (little-endian)\n",
                data[0], data[1], data[2], data[3], raw_value);

  // Calculate weight in grams: (tare - reading) / scale_factor
  // Note: Reading decreases as weight increases (inverted load cell)
  int32_t weight_grams = (M5WEIGHT_TARE_OFFSET - raw_value) / M5WEIGHT_SCALE_FACTOR;

  ZPAL_LOG_DEBUG(ZPAL_LOG_APP, "Calculated weight: %d grams\n", weight_grams);

  // Handle scale conversion (precision 3 = 3 decimal places)
  int32_t final_value;
  if (i_scale == SENSOR_SCALE_POUND) {
    // Convert grams to pounds with precision 3
    // 1 gram = 0.00220462 lbs, so pounds = grams * 2.20462 / 1000
    final_value = (weight_grams * 220462) / 100000;  // Fixed point math
    ZPAL_LOG_DEBUG(ZPAL_LOG_APP, "Weight: %d.%03d lb\n", final_value / 1000, final_value % 1000);
  } else {  // SENSOR_SCALE_KILOGRAM (default)
    // weight_grams is already in the correct format (1234 = 1.234 kg)
    final_value = weight_grams;
    ZPAL_LOG_DEBUG(ZPAL_LOG_APP, "Weight: %d.%03d kg\n", final_value / 1000, final_value % 1000);
  }

  // Fill in the result structure
  memset(o_result, 0, sizeof(sensor_read_result_t));
  o_result->precision  = SENSOR_READ_RESULT_PRECISION_3;  // 3 decimal places
  o_result->size_bytes = SENSOR_READ_RESULT_SIZE_4;       // 4 bytes

  // Pack value as big-endian (network byte order)
  o_result->raw_result[3] = (uint8_t)(final_value & 0xFF);
  o_result->raw_result[2] = (uint8_t)((final_value >> 8) & 0xFF);
  o_result->raw_result[1] = (uint8_t)((final_value >> 16) & 0xFF);
  o_result->raw_result[0] = (uint8_t)((final_value >> 24) & 0xFF);

  return true;
}
