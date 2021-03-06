# inherit from the proprietary version
-include vendor/huawei/u9508/BoardConfigVendor.mk

#cpu + kernel info for boot.img
TARGET_ARCH := arm
BOARD_KERNEL_CMDLINE := console=ttyS0 vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnvm1),p14(modemnvm2),p15(system),p16(cache),p17(cust),p18(userdata);mmcblk1:p1(ext_sdcard)

BOARD_KERNEL_PAGESIZE := 2048 
BOARD_KERNEL_BASE := 0x80000000
TARGET_PREBUILT_KERNEL := device/huawei/u9508/zImage

#TARGET_CPU_ABI := armeabi-v7a
#TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_SMP := true
#TARGET_ARCH_VARIANT := armv7-a-neon
#ARCH_ARM_HAVE_TLS_REGISTER := true

#TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true
#TARGET_BOARD_PLATFORM := omap4
#TARGET_BOOTLOADER_BOARD_NAME := viva
#TARGET_OTA_ASSERT_DEVICE := viva,u9508

# fix this up by examining partition on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 83886080
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 83886080
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

#Graphics
BOARD_EGL_CFG := device/huawei/u9508/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1


# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
