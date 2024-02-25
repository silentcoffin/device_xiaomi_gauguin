# Architecture Configuration
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := kryo300
TARGET_CPU_VARIANT_RUNTIME := cortex-a77
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo300
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# GPU Configuration
TARGET_BOARD_PLATFORM_GPU := adreno619

# Vendor Configuration
BOARD_VENDOR := xiaomi
DEVICE_PATH := device/xiaomi/gauguin
TARGET_BOARD_PLATFORM := sm7225
TARGET_DEVICE := gauguin
BOARD_USES_QCOM_HARDWARE := true

# Telephony Configuration
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# SELinux Policy Configuration
include device/qcom/sepolicy/SEPolicy.mk
include device/qcom/sepolicy_vndr/SEPolicy.mk
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/configs/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/configs/sepolicy/public

# Recovery Configuration
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Framework Configuration
BOARD_VNDK_VERSION := current

# Binder Configuration
TARGET_USES_64_BIT_BINDER := true

# DRM Configuration
TARGET_ENABLE_MEDIADRM_64 := true

# Camera Configuration
TARGET_USES_QTI_CAMERA_DEVICE := true

# ANT+ Configuration
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Screen Density Configuration
TARGET_SCREEN_DENSITY := 320

# Kernel Configuration
TARGET_KERNEL_CONFIG := neko_gauguin_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/xiaomi/gauguin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Boot Image Configuration
BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMG_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_DTB_OFFSET := 0x01E00000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=a600000.dwc3 swiotlb=2048 loop.max_part=7 cgroup.memory=nokmem,nosocket reboot=panic_warm androidboot.selinux=enforcing
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_CMDLINE += skip_initramfs
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
NEED_KERNEL_MODULE_SYSTEM := true
TARGET_KERNEL_ADDITIONAL_FLAGS := DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/configs/prebuilt/Image
TARGET_KERNEL_CLANG_COMPILE := true
BOARD_KERNEL_HEADER_VERSION := 3

# Dynamic Partitions Configuration
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_BUILD_AB_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_QCOM_BOOT_HOOKS := true
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := true
BOARD_AVB_VBMETA_VENDOR := true
BOARD_AVB_VBMETA_PRODUCT := true
BOARD_AVB_VBMETA_ODM := true
BOARD_AVB_VBMETA_SYSTEM_EXT := true
BOARD_AVB_VBMETA_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_ALGORITHM := SHA256_RSA4096

# Proprietary Configuration Inheritance
-include vendor/xiaomi/gauguin/BoardConfigVendor.mk
