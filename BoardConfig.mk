# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mrvl
TARGET_BOARD_PLATFORM_GPU := vivante-gc1000
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
TARGET_SOC := pxa988
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := pxa988
BOARD_VENDOR := samsung

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# U-boot
TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/goya/prebuilt/kernel
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive androidboot.hardware=pxa988
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --cmdline "androidboot.selinux=permissive androidboot.hardware=pxa988"
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/goya/mkbootimg.mk
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 4096

# Update OTA
BLOCK_BASED_OTA := false

# Assert
TARGET_OTA_ASSERT_DEVICE := goya,goyawifi,goya3g
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
TW_THEME := portrait_mdpi
TW_MTP_DEVICE := "/dev/mtp_usb"
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USES_LOGD := true

TARGET_RECOVERY_INITRC := device/samsung/goya/recovery/root/init.rc

RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

TW_EXCLUDE_TWRPAPP      := true
#TW_EXCLUDE_MTP          := false
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"
TW_USE_TOOLBOX          := true

RECOVERY_SDCARD_ON_DATA := true

# MRVL hardware + Graphics
BOARD_USES_MRVL_HARDWARE := true
MRVL_ION := true
MRVL_INTERFACE_ANIMATION := true
TARGET_FORCE_CPU_UPLOAD := true
USE_OPENGL_RENDERER := true
BOARD_USE_BGRA_8888 := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Resolution
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH  := 600

# Charging mode
BOARD_LPM_BOOT_ARGUMENT_NAME := lpm_boot
BOARD_LPM_BOOT_ARGUMENT_VALUE := 1