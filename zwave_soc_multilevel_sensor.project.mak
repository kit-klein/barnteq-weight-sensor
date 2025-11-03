####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 19                                              #
####################################################################

BASE_SDK_PATH = /Users/kleinlabs/.silabs/slt/installs/conan/p/simpleb526998f4a4d/p
BASE_PKG_PATH = /Users/kleinlabs/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2025.6.2

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DAPP_PROPERTIES_CONFIG_FILE=<application_properties_config.h>' \
 '-DFILE_ID_APPLICATIONDATA=0x00000' \
 '-DEFR32ZG28B312F1024IM48=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DZW_MIGRATION_TO_7_19=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' \
 '-DHFXO_FREQ=39000000' \
 '-DSL_BOARD_NAME="BRD2705A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel' \
 '-DSL_CODE_COMPONENT_GPIO=gpio' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DSL_CODE_COMPONENT_HAL_SYSRTC=hal_sysrtc' \
 '-DSL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal' \
 '-DCONFIG_MBEDTLS_USE_FREERTOS_PVCALLOC=1' \
 '-DEFR32ZG=1' \
 '-DSL_IOSTREAM_UART_FLUSH_TX_BUFFER=1' \
 '-D_GNU_SOURCE=1' \
 '-DconfigPOST_SLEEP_PROCESSING=exitPowerDown' \
 '-DconfigPRE_SLEEP_PROCESSING=enterPowerDown' \
 '-DNVM3_DEFAULT_NVM_SIZE=32768' \
 '-DZW_SECURITY_PROTOCOL=1' \
 '-DZW_SLAVE=1' \
 '-DSL_CATALOG_ZW_PM_TRANSITION_EVENT_PRESENT=1' \
 '-DNDEBUG=1' \
 '-DZAF_CONFIG_APP_ROLE_TYPE=ZWAVEPLUS_INFO_REPORT_ROLE_TYPE_END_NODE_SLEEPING_REPORTING' \
 '-DZAF_CONFIG_DEVICE_OPTION_MASK=APPLICATION_NODEINFO_NOT_LISTENING' \
 '-DSDK_VERSION_MAJOR=7' \
 '-DSDK_VERSION_MINOR=24' \
 '-DSDK_VERSION_PATCH=2' \
 '-DZAF_BUILD_NO=43981' \
 '-DZAF_VERSION_MAJOR=10' \
 '-DZAF_VERSION_MINOR=24' \
 '-DZAF_VERSION_PATCH=2'

ASM_DEFS += \
 '-DAPP_PROPERTIES_CONFIG_FILE=<application_properties_config.h>' \
 '-DFILE_ID_APPLICATIONDATA=0x00000' \
 '-DEFR32ZG28B312F1024IM48=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DZW_MIGRATION_TO_7_19=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' \
 '-DHFXO_FREQ=39000000' \
 '-DSL_BOARD_NAME="BRD2705A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel' \
 '-DSL_CODE_COMPONENT_GPIO=gpio' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DSL_CODE_COMPONENT_HAL_SYSRTC=hal_sysrtc' \
 '-DSL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal' \
 '-DCONFIG_MBEDTLS_USE_FREERTOS_PVCALLOC=1' \
 '-DEFR32ZG=1' \
 '-DSL_IOSTREAM_UART_FLUSH_TX_BUFFER=1' \
 '-D_GNU_SOURCE=1' \
 '-DconfigPOST_SLEEP_PROCESSING=exitPowerDown' \
 '-DconfigPRE_SLEEP_PROCESSING=enterPowerDown' \
 '-DNVM3_DEFAULT_NVM_SIZE=32768' \
 '-DZW_SECURITY_PROTOCOL=1' \
 '-DZW_SLAVE=1' \
 '-DSL_CATALOG_ZW_PM_TRANSITION_EVENT_PRESENT=1' \
 '-DNDEBUG=1' \
 '-DZAF_CONFIG_APP_ROLE_TYPE=ZWAVEPLUS_INFO_REPORT_ROLE_TYPE_END_NODE_SLEEPING_REPORTING' \
 '-DZAF_CONFIG_DEVICE_OPTION_MASK=APPLICATION_NODEINFO_NOT_LISTENING' \
 '-DSDK_VERSION_MAJOR=7' \
 '-DSDK_VERSION_MINOR=24' \
 '-DSDK_VERSION_PATCH=2' \
 '-DZAF_BUILD_NO=43981' \
 '-DZAF_VERSION_MAJOR=10' \
 '-DZAF_VERSION_MINOR=24' \
 '-DZAF_VERSION_PATCH=2'

INCLUDES += \
 -Iautogen \
 -Iconfig \
 -Iconfig/cc_config \
 -Iconfig/sample_keys \
 -I. \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/app/common/util/app_button_press \
 -I$(SDK_PATH)/app/common/util/app_em4h \
 -I$(SDK_PATH)/app/common/util/app_log \
 -I$(SDK_PATH)/app/common/util/app_queue \
 -I$(SDK_PATH)/app/common/util/app_rta/inc \
 -I$(SDK_PATH)/app/common/util/app_rta/inc/rtos \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/bootloader/core/flash \
 -I$(SDK_PATH)/platform/driver/button/inc \
 -I$(SDK_PATH)/platform/service/cli/inc \
 -I$(SDK_PATH)/platform/service/cli/src \
 -I$(SDK_PATH)/platform/service/clock_manager/inc \
 -I$(SDK_PATH)/platform/service/clock_manager/src \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/CMSIS/RTOS2/Include \
 -I$(SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(SDK_PATH)/platform/driver/debug/inc \
 -I$(SDK_PATH)/platform/service/device_manager/inc \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc/s2_signals \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/util/third_party/freertos/kernel/include \
 -I$(SDK_PATH)/util/third_party/freertos/cmsis/Include \
 -I$(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure \
 -I$(SDK_PATH)/platform/driver/gpio/inc \
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/platform/peripheral/inc \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/platform/driver/i2cspm/inc \
 -I$(SDK_PATH)/platform/service/interrupt_manager/inc \
 -I$(SDK_PATH)/platform/service/interrupt_manager/src \
 -I$(SDK_PATH)/platform/service/interrupt_manager/inc/arm \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/mbedtls/library \
 -I$(SDK_PATH)/platform/service/memory_manager/inc \
 -I$(SDK_PATH)/platform/service/memory_manager/src \
 -I$(SDK_PATH)/platform/service/mpu/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/config \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/wmbus \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/sidewalk \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg28 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path_switch \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(SDK_PATH)/platform/service/sl_main/inc \
 -I$(SDK_PATH)/platform/service/sl_main/src \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sli_psec_osal/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc \
 -I$(SDK_PATH)/hardware/driver/veml6035/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppName \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/nvm \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ProtocolConfig/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/TransportLayer/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities \
 -I$(SDK_PATH)/protocol/z-wave/AppsHw/inc \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Common \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultiChan/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/inc \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/inc \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping \
 -I$(SDK_PATH)/protocol/z-wave/dist/include/zwave \
 -I$(SDK_PATH)/protocol/z-wave/dist/include/zpal \
 -I$(SDK_PATH)/protocol/z-wave/Components/SwTimer \
 -I$(SDK_PATH)/protocol/z-wave/Components/Utils \
 -I$(SDK_PATH)/protocol/z-wave/Components/QueueNotifying \
 -I$(SDK_PATH)/protocol/z-wave/Components/NodeMask \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/PAL/inc \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/PAL/inc/application_properties \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/Actuator \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF \
 -I$(SDK_PATH)/protocol/z-wave/Components/CRC \
 -I$(SDK_PATH)/protocol/z-wave/Components/EventDistributor \
 -I$(SDK_PATH)/protocol/z-wave/Components/SyncEvent \
 -I$(SDK_PATH)/protocol/z-wave/Components/MfgTokens \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_pm_transition_event/inc \
 -I$(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager \
 -I$(SDK_PATH)/protocol/z-wave/ZAF/configuration/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg28_gcc_release.a \
 $(SDK_PATH)/protocol/z-wave/dist/lib/libZWaveSlave_series2.a \
 $(SDK_PATH)/protocol/z-wave/dist/lib/libzpal_EFR32ZG28.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c18 \
 -mcmse \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g0 \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 -flto=auto -fwhole-program \
 --specs=nano.specs \
 -s \
 -fmerge-all-constants \
 -Wall \
 -Werror \
 -Wextra \
 -Werror=vla \
 -Wno-implicit-function-declaration

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++17 \
 -fno-rtti \
 -fno-exceptions \
 -mcmse \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g0 \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 -flto=auto -fwhole-program \
 --specs=nano.specs \
 -s \
 -fmerge-all-constants \
 -Wall \
 -Werror \
 -Wextra \
 -Werror=vla \
 -Wno-implicit-function-declaration

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--wrap=_free_r -Wl,--wrap=_malloc_r -Wl,--wrap=_calloc_r -Wl,--wrap=_realloc_r \
 -Wl,--wrap=main \
 -Wl,--start-group -lgcc -lc -Wl,--end-group \
 -flto \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
ifeq ($(POST_BUILD_EXE),)
		$(error POST_BUILD_EXE is not defined. Post-Build cannot run. Please set the STUDIO_ADAPTER_PACK_PATH to the post-build tool when generating or override the variable for this makefile)
endif
	@$(POSIX_TOOL_PATH)echo 'Running Project Post-Build'
	$(ECHO) @"$(POST_BUILD_EXE)" postbuild "./zwave_soc_multilevel_sensor.slpb" --parameter build_dir:"$(OUTPUT_DIR)"

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/common/util/app_button_press/app_button_press.o: $(SDK_PATH)/app/common/util/app_button_press/app_button_press.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_button_press/app_button_press.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_button_press/app_button_press.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_button_press/app_button_press.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_button_press/app_button_press.o

$(OUTPUT_DIR)/sdk/app/common/util/app_em4h/app_em4h.o: $(SDK_PATH)/app/common/util/app_em4h/app_em4h.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_em4h/app_em4h.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_em4h/app_em4h.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_em4h/app_em4h.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_em4h/app_em4h.o

$(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o: $(SDK_PATH)/app/common/util/app_log/app_log.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_log/app_log.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_log/app_log.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o

$(OUTPUT_DIR)/sdk/app/common/util/app_queue/app_queue.o: $(SDK_PATH)/app/common/util/app_queue/app_queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_queue/app_queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_queue/app_queue.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_queue/app_queue.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_queue/app_queue.o

$(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_freertos.o: $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_freertos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_freertos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_freertos.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_freertos.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_freertos.o

$(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_list.o: $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_list.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_list.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_list.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_list.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_list.o

$(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_rtos.o: $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_rtos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_rtos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_rta/src/rtos/app_rta_rtos.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_rtos.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_rta/src/rtos/app_rta_rtos.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o: $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o

$(OUTPUT_DIR)/sdk/hardware/driver/veml6035/src/sl_veml6035.o: $(SDK_PATH)/hardware/driver/veml6035/src/sl_veml6035.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/veml6035/src/sl_veml6035.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/veml6035/src/sl_veml6035.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/veml6035/src/sl_veml6035.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/veml6035/src/sl_veml6035.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.o: $(SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.o

$(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o: $(SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.d
OBJS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_cmsis_os2_common.o: $(SDK_PATH)/platform/common/src/sl_cmsis_os2_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_cmsis_os2_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_cmsis_os2_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_cmsis_os2_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_cmsis_os2_common.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o: $(SDK_PATH)/platform/common/src/sl_core_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_core_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_core_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o: $(SDK_PATH)/platform/common/src/sl_syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_syscalls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o

$(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o: $(SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_storage.o: $(SDK_PATH)/platform/common/toolchain/src/sl_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_storage.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o: $(SDK_PATH)/platform/driver/button/src/sl_button.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_button.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o: $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o

$(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o: $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o

$(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o: $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o

$(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o: $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_acmp.o: $(SDK_PATH)/platform/emlib/src/em_acmp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_acmp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_acmp.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_acmp.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_acmp.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_dbg.o: $(SDK_PATH)/platform/emlib/src/em_dbg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_dbg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_dbg.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_dbg.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_dbg.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.o: $(SDK_PATH)/platform/emlib/src/em_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpcrc.o: $(SDK_PATH)/platform/emlib/src/em_gpcrc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpcrc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpcrc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpcrc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpcrc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o: $(SDK_PATH)/platform/emlib/src/em_i2c.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_i2c.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o: $(SDK_PATH)/platform/emlib/src/em_iadc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_iadc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_iadc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_lcd.o: $(SDK_PATH)/platform/emlib/src/em_lcd.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_lcd.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_lcd.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_lcd.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_lcd.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_lesense.o: $(SDK_PATH)/platform/emlib/src/em_lesense.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_lesense.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_lesense.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_lesense.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_lesense.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_letimer.o: $(SDK_PATH)/platform/emlib/src/em_letimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_letimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_letimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_letimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_letimer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_opamp.o: $(SDK_PATH)/platform/emlib/src/em_opamp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_opamp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_opamp.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_opamp.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_opamp.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_pcnt.o: $(SDK_PATH)/platform/emlib/src/em_pcnt.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_pcnt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_pcnt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_pcnt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_pcnt.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o: $(SDK_PATH)/platform/emlib/src/em_rmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_vdac.o: $(SDK_PATH)/platform/emlib/src/em_vdac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_vdac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_vdac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_vdac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_vdac.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o: $(SDK_PATH)/platform/emlib/src/em_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_eusart.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_eusart.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_prs.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_prs.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_sysrtc.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_sysrtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_sysrtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_sysrtc.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path_switch/sl_rail_util_rf_path_switch.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path_switch/sl_rail_util_rf_path_switch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path_switch/sl_rail_util_rf_path_switch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path_switch/sl_rail_util_rf_path_switch.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path_switch/sl_rail_util_rf_path_switch.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path_switch/sl_rail_util_rf_path_switch.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sli_psec_osal/src/sli_psec_osal_cmsis_rtos2.o: $(SDK_PATH)/platform/security/sl_component/sli_psec_osal/src/sli_psec_osal_cmsis_rtos2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sli_psec_osal/src/sli_psec_osal_cmsis_rtos2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sli_psec_osal/src/sli_psec_osal_cmsis_rtos2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sli_psec_osal/src/sli_psec_osal_cmsis_rtos2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sli_psec_osal/src/sli_psec_osal_cmsis_rtos2.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/clocks/sl_device_clock_efr32xg28.o: $(SDK_PATH)/platform/service/device_manager/clocks/sl_device_clock_efr32xg28.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/clocks/sl_device_clock_efr32xg28.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/clocks/sl_device_clock_efr32xg28.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/clocks/sl_device_clock_efr32xg28.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/clocks/sl_device_clock_efr32xg28.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg28.o: $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg28.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg28.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg28.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg28.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg28.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o: $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o: $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu_s2.o: $(SDK_PATH)/platform/service/mpu/src/sl_mpu_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/mpu/src/sl_mpu_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/mpu/src/sl_mpu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o: $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o: $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/rtos/main_retarget.o: $(SDK_PATH)/platform/service/sl_main/src/rtos/main_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/rtos/main_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/rtos/main_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/rtos/main_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/rtos/main_retarget.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.o: $(SDK_PATH)/platform/service/sl_main/src/sl_main_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/sl_main_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/sl_main_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.o: $(SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_kernel.o: $(SDK_PATH)/platform/service/sl_main/src/sl_main_kernel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/sl_main_kernel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/sl_main_kernel.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_kernel.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_kernel.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_button_handler.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_button_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_button_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_button_handler.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_button_handler.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_button_handler.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_deep_sleep.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_deep_sleep.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_deep_sleep.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_deep_sleep.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_deep_sleep.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/app_deep_sleep.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/board_indicator.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/board_indicator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/board_indicator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/board_indicator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/board_indicator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/board_indicator.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/IADC.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/IADC.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/IADC.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/IADC.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/IADC.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/AppsHw/src/common/IADC.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common/zw_cli_common.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common/zw_cli_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common/zw_cli_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common/zw_cli_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common/zw_cli_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_cli_common/zw_cli_common.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping/zw_cli_sleeping.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping/zw_cli_sleeping.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping/zw_cli_sleeping.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping/zw_cli_sleeping.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping/zw_cli_sleeping.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_cli_sleeping/zw_cli_sleeping.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_log/zw_log.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_log/zw_log.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_log/zw_log.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_log/zw_log.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_log/zw_log.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_log/zw_log.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager/zw_power_manager.o: $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager/zw_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager/zw_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager/zw_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager/zw_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/platform/SiliconLabs/components/zw_power_manager/zw_power_manager.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_helper.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_helper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_helper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_helper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_helper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_helper.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_interface.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_interface.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/_commonIF/ZAF_Common_interface.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/Actuator/ZAF_Actuator.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/Actuator/ZAF_Actuator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/Actuator/ZAF_Actuator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/Actuator/ZAF_Actuator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/Actuator/ZAF_Actuator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/Actuator/ZAF_Actuator.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppName/ZAF_AppName_weak.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppName/ZAF_AppName_weak.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppName/ZAF_AppName_weak.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppName/ZAF_AppName_weak.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppName/ZAF_AppName_weak.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppName/ZAF_AppName_weak.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppTimer.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppTimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppTimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppTimer.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppTimer.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppTimer.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppTimerDeepSleep.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppTimerDeepSleep.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppTimerDeepSleep.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/AppTimerDeepSleep.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppTimerDeepSleep.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/AppTimerDeepSleep.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator/zaf_cc_list_generator.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator/zaf_cc_list_generator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator/zaf_cc_list_generator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator/zaf_cc_list_generator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator/zaf_cc_list_generator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/CCListGenerator/zaf_cc_list_generator.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor_soc.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor_soc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor_soc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor_soc.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor_soc.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/EventHandling/zaf_event_distributor_soc.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/nvm/zaf_nvm_soc.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/nvm/zaf_nvm_soc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/nvm/zaf_nvm_soc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/nvm/zaf_nvm_soc.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/nvm/zaf_nvm_soc.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/nvm/zaf_nvm_soc.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE_weak.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE_weak.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE_weak.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE_weak.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE_weak.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/TrueStatusEngine/ZAF_TSE_weak.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CC_Invoker.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CC_Invoker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CC_Invoker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CC_Invoker.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CC_Invoker.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CC_Invoker.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CmdPublisher.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CmdPublisher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CmdPublisher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CmdPublisher.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CmdPublisher.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_CmdPublisher.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_command_class_utils.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_command_class_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_command_class_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_command_class_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_command_class_utils.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_command_class_utils.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_learn.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_learn.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_learn.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_learn.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_learn.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_learn.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_management.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_management.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_management.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_network_management.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm_app.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm_app.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm_app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm_app.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm_app.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_nvm_app.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_PrintAppInfo.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_PrintAppInfo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_PrintAppInfo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_PrintAppInfo.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_PrintAppInfo.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_PrintAppInfo.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_retention_register.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_retention_register.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_retention_register.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_retention_register.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_retention_register.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_retention_register.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_transport.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_transport.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_transport.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_transport.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_transport.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_transport.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_version.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_version.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_version.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_version.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_version.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZAF_version.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportEndpoint.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportEndpoint.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportEndpoint.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportEndpoint.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportEndpoint.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportEndpoint.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportMulticast.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportMulticast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportMulticast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportMulticast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportMulticast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportMulticast.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportSecProtocol.o: $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportSecProtocol.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportSecProtocol.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportSecProtocol.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportSecProtocol.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ApplicationUtilities/ZW_TransportSecProtocol.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/association_plus.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/association_plus.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/association_plus.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/association_plus.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/association_plus.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/association_plus.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_Association.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_Association.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_Association.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_Association.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_Association.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_Association.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_AssociationGroupInfo.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_AssociationGroupInfo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_AssociationGroupInfo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_AssociationGroupInfo.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_AssociationGroupInfo.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_AssociationGroupInfo.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_MultiChanAssociation.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_MultiChanAssociation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_MultiChanAssociation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_MultiChanAssociation.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_MultiChanAssociation.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Association/src/CC_MultiChanAssociation.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/CC_Battery.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/CC_Battery.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/CC_Battery.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/CC_Battery.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/CC_Battery.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/CC_Battery.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_config_api.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_config_api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_config_api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_config_api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_config_api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_config_api.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_io_weak.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_io_weak.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_io_weak.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_io_weak.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_io_weak.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_io_weak.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_nvm.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_nvm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_nvm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_nvm.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_nvm.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Battery/src/cc_battery_nvm.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Common/CC_Common.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Common/CC_Common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Common/CC_Common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Common/CC_Common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Common/CC_Common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Common/CC_Common.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Configuration/src/CC_Configuration.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src/CC_Configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src/CC_Configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src/CC_Configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Configuration/src/CC_Configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Configuration/src/CC_Configuration.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Configuration/src/cc_configuration_io.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src/cc_configuration_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src/cc_configuration_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Configuration/src/cc_configuration_io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Configuration/src/cc_configuration_io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Configuration/src/cc_configuration_io.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally_weak.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally_weak.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally_weak.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally_weak.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally_weak.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/DeviceResetLocally/CC_DeviceResetLocally_weak.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/CC_FirmwareUpdate.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/CC_FirmwareUpdate.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/CC_FirmwareUpdate.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/CC_FirmwareUpdate.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/CC_FirmwareUpdate.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/CC_FirmwareUpdate.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/ota_util.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/ota_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/ota_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/ota_util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/ota_util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/FirmwareUpdate/src/ota_util.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator_weak.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator_weak.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator_weak.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator_weak.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator_weak.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Indicator/src/CC_Indicator_weak.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ManufacturerSpecific/CC_ManufacturerSpecific.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ManufacturerSpecific/CC_ManufacturerSpecific.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ManufacturerSpecific/CC_ManufacturerSpecific.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ManufacturerSpecific/CC_ManufacturerSpecific.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ManufacturerSpecific/CC_ManufacturerSpecific.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ManufacturerSpecific/CC_ManufacturerSpecific.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultiChan/src/multichannel.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultiChan/src/multichannel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultiChan/src/multichannel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultiChan/src/multichannel.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultiChan/src/multichannel.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultiChan/src/multichannel.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandler.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandler.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandler.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandler.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandler.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandlerTypes.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandlerTypes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandlerTypes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandlerTypes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandlerTypes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_SensorHandlerTypes.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_Support.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_Support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_Support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_Support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_Support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/MultilevelSensor/src/CC_MultilevelSensor_Support.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/PowerLevel/CC_PowerLevel.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/PowerLevel/CC_PowerLevel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/PowerLevel/CC_PowerLevel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/PowerLevel/CC_PowerLevel.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/PowerLevel/CC_PowerLevel.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/PowerLevel/CC_PowerLevel.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Supervision/src/CC_Supervision.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src/CC_Supervision.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src/CC_Supervision.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src/CC_Supervision.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Supervision/src/CC_Supervision.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Supervision/src/CC_Supervision.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Supervision/src/cc_supervision_config_api.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src/cc_supervision_config_api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src/cc_supervision_config_api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Supervision/src/cc_supervision_config_api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Supervision/src/cc_supervision_config_api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Supervision/src/cc_supervision_config_api.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Version/CC_Version.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Version/CC_Version.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Version/CC_Version.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/Version/CC_Version.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Version/CC_Version.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/Version/CC_Version.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/cc_wake_up_config_api.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/cc_wake_up_config_api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/cc_wake_up_config_api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/cc_wake_up_config_api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/cc_wake_up_config_api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/cc_wake_up_config_api.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/CC_WakeUp.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/CC_WakeUp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/CC_WakeUp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/CC_WakeUp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/CC_WakeUp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/WakeUp/src/CC_WakeUp.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/cc_zwave_plus_info_config_api.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/cc_zwave_plus_info_config_api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/cc_zwave_plus_info_config_api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/cc_zwave_plus_info_config_api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/cc_zwave_plus_info_config_api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/cc_zwave_plus_info_config_api.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/CC_ZWavePlusInfo.o: $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/CC_ZWavePlusInfo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/CC_ZWavePlusInfo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/CC_ZWavePlusInfo.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/CC_ZWavePlusInfo.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/CommandClasses/ZWavePlusInfo/src/CC_ZWavePlusInfo.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/configuration/src/zaf_config_api.o: $(SDK_PATH)/protocol/z-wave/ZAF/configuration/src/zaf_config_api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/configuration/src/zaf_config_api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/configuration/src/zaf_config_api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/configuration/src/zaf_config_api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/configuration/src/zaf_config_api.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ProtocolConfig/src/zaf_protocol_config.o: $(SDK_PATH)/protocol/z-wave/ZAF/ProtocolConfig/src/zaf_protocol_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/ProtocolConfig/src/zaf_protocol_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/ProtocolConfig/src/zaf_protocol_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ProtocolConfig/src/zaf_protocol_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/ProtocolConfig/src/zaf_protocol_config.o

$(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/TransportLayer/src/zaf_transport_tx.o: $(SDK_PATH)/protocol/z-wave/ZAF/TransportLayer/src/zaf_transport_tx.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/z-wave/ZAF/TransportLayer/src/zaf_transport_tx.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/z-wave/ZAF/TransportLayer/src/zaf_transport_tx.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/TransportLayer/src/zaf_transport_tx.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/z-wave/ZAF/TransportLayer/src/zaf_transport_tx.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.o: $(SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.o: $(SDK_PATH)/util/third_party/freertos/kernel/croutine.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/croutine.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/croutine.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.o: $(SDK_PATH)/util/third_party/freertos/kernel/event_groups.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/event_groups.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/event_groups.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.o: $(SDK_PATH)/util/third_party/freertos/kernel/list.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/list.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/list.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.o: $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/mpu_wrappers_v2_asm.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.o: $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.o: $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_3.o: $(SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_3.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_3.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_3.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/SiliconLabs/cortexm/tick_power_manager.o: $(SDK_PATH)/util/third_party/freertos/kernel/portable/SiliconLabs/cortexm/tick_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/portable/SiliconLabs/cortexm/tick_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/portable/SiliconLabs/cortexm/tick_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/SiliconLabs/cortexm/tick_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/SiliconLabs/cortexm/tick_power_manager.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.o: $(SDK_PATH)/util/third_party/freertos/kernel/queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.o: $(SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.o: $(SDK_PATH)/util/third_party/freertos/kernel/tasks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/tasks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/tasks.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.o: $(SDK_PATH)/util/third_party/freertos/kernel/timers.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/freertos/kernel/timers.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/freertos/kernel/timers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/app_btn_handler.o: app_btn_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building app_btn_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app_btn_handler.c
CDEPS += $(OUTPUT_DIR)/project/app_btn_handler.d
OBJS += $(OUTPUT_DIR)/project/app_btn_handler.o

$(OUTPUT_DIR)/project/app_cc_battery_callbacks.o: app_cc_battery_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building app_cc_battery_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app_cc_battery_callbacks.c
CDEPS += $(OUTPUT_DIR)/project/app_cc_battery_callbacks.d
OBJS += $(OUTPUT_DIR)/project/app_cc_battery_callbacks.o

$(OUTPUT_DIR)/project/app_cli.o: app_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building app_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app_cli.c
CDEPS += $(OUTPUT_DIR)/project/app_cli.d
OBJS += $(OUTPUT_DIR)/project/app_cli.o

$(OUTPUT_DIR)/project/app_pm_transition_event.o: app_pm_transition_event.c
	@$(POSIX_TOOL_PATH)echo 'Building app_pm_transition_event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app_pm_transition_event.c
CDEPS += $(OUTPUT_DIR)/project/app_pm_transition_event.d
OBJS += $(OUTPUT_DIR)/project/app_pm_transition_event.o

$(OUTPUT_DIR)/project/app_sleep_callbacks.o: app_sleep_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building app_sleep_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app_sleep_callbacks.c
CDEPS += $(OUTPUT_DIR)/project/app_sleep_callbacks.d
OBJS += $(OUTPUT_DIR)/project/app_sleep_callbacks.o

$(OUTPUT_DIR)/project/autogen/app_rta_init.o: autogen/app_rta_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/app_rta_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/app_rta_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/app_rta_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/app_rta_init.o

$(OUTPUT_DIR)/project/autogen/cc_configuration_config.o: autogen/cc_configuration_config.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/cc_configuration_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/cc_configuration_config.c
CDEPS += $(OUTPUT_DIR)/project/autogen/cc_configuration_config.d
OBJS += $(OUTPUT_DIR)/project/autogen/cc_configuration_config.o

$(OUTPUT_DIR)/project/autogen/cc_multilevel_sensor_config.o: autogen/cc_multilevel_sensor_config.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/cc_multilevel_sensor_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/cc_multilevel_sensor_config.c
CDEPS += $(OUTPUT_DIR)/project/autogen/cc_multilevel_sensor_config.d
OBJS += $(OUTPUT_DIR)/project/autogen/cc_multilevel_sensor_config.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_board_default_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o: autogen/sl_iostream_init_eusart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_eusart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_eusart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.o: autogen/sl_simple_button_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_simple_button_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_button_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o: autogen/sl_simple_led_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_simple_led_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

# hx711_driver.c removed - using I2C interface instead (see alternative/ folder)

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/MultilevelSensor_interface_hx711.o: MultilevelSensor_interface_hx711.c
	@$(POSIX_TOOL_PATH)echo 'Building MultilevelSensor_interface_hx711.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ MultilevelSensor_interface_hx711.c
CDEPS += $(OUTPUT_DIR)/project/MultilevelSensor_interface_hx711.d
OBJS += $(OUTPUT_DIR)/project/MultilevelSensor_interface_hx711.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA