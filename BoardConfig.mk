# Zezwolenie na brakujące zależności
ALLOW_MISSING_DEPENDENCIES := true

# Architektura procesora (32-bit dla kernela Hammer Energy)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# Ścieżka do fabrycznego kernela
TARGET_NO_KERNEL := false
BOARD_KERNEL_SEPARATED_DTBO := false
TARGET_PREBUILT_KERNEL := device/myphone/Hammer_Energy/prebuilt/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

# Parametry nagłówka bootimg (Oryginalne offsety MediaTek)
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_TAGS_OFFSET := 0x0e000000

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 buildvariant=user

# Limit rozmiaru recovery (16MB) - KOMPRESJA GZIP (Standardowa dla tego kernela)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216

# Konfiguracja i odchudzanie TWRP pod limit 16MB
TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_ENCRYPTED_BACKUP := true
TW_EXCLUDE_MTP := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_BASH := true
TW_INCLUDE_CRYPTO := false
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_PYTHON := true
TW_NO_BIND_SYSTEM := true
TW_EXCLUDE_LPDUMP := true
TW_EXCLUDE_APEX := true
