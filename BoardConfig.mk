# inherit from the proprietary version
-include vendor/lenovo/a680/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mt6582
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
DEVICE_RESOLUTION := 480x854
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/lenovo/a680/kernel/kernel
TARGET_KMODULES := true
# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1231028224
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2443313152
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4:=true

# Recovery
TARGET_RECOVERY_FSTAB := device/lenovo/a680/recovery/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true


#Recovery-MTK Flags
# Clone modified source of recovery to work with mtk

CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x600000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x600000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x60000

#BOARD_USE_NTFS_3G := false


#Assert
TARGET_OTA_ASSERT_DEVICE := A680,huaqin82_wet_e_jb5

# Hardware Rendering
# EGL settings
BOARD_EGL_CFG := device/lenovo/a680/egl/egl.cfg
USE_OPENGL_RENDERER := true

# telephony
#BOARD_RIL_CLASS := ../../../device/lenovo/a680/ril/


# Deodex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

#Camera
USE_CAMERA_STUB := true
BOARD_USE_JPEG := true

#custom bootimg make
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/a680/boot.mk

# blob hacks Flags
# COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
# COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB
# COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB
# COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS


# Audio
BOARD_USES_GENERIC_AUDIO := true
HAVE_HTC_AUDIO_DRIVER := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB
BOARD_USES_HWCOMPOSER := true
BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lenovo/a680/bluetooth

#Graphics
BOARD_USES_SKIAHWJPEG := true

#FIMG Acceleration
BOARD_USES_FIMGAPI := true

#Enable WEBGL in WebKit
ENABLE_WEBGL := true

#JIT / Optimizations
JS_ENGINE := v8


# WIFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X
MTK_WAPI_SUPPORT := yes
MTK_EAP_SIM_AKA := yes



# Bootanimation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true


# Skip droiddoc build to save build time
#BOARD_SKIP_ANDROID_DOC_BUILD := true


# MTK hacks for hw
# TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
# NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
# TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
# VSYNC_EVENT_PHASE_OFFSET_NS := -5000000
# SF_VSYNC_EVENT_PHASE_OFFSET_NS := -5000000
# PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
