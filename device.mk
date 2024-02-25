# Device Configuration for Xiaomi Mi 10i (gauguin) 

# Common Configuration Inheritance
$(call inherit-product, vendor/carbon/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Vendor Configuration Inheritance
$(call inherit-product, vendor/xiaomi/gauguin/gauguin-vendor.mk)

# Device Identifiers
PRODUCT_NAME := carbon_gauguin
PRODUCT_DEVICE := gauguin
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10i
PRODUCT_MANUFACTURER := Xiaomi

# File Copy Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# Proprietary Blobs Configuration
PRODUCT_PACKAGES += \
    qti-telephony-common \
    QtiTelephonyService

# Permissions Configuration
PRODUCT_PACKAGES += \
    android.hardware.telephony.gsm.xml \
    android.hardware.telephony.ims.xml

# Overlay Configuration
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Features Configuration
PRODUCT_FEATURES += \
    WIFI \
    GPS \
    CAMERA

# Kernel Configuration
TARGET_KERNEL_SOURCE := kernel/xiaomi/gauguin
TARGET_KERNEL_CONFIG := neko_gauguin_defconfig

# Build Properties Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.mod_device=gauguin_carbon
PRODUCT_BUILD_PROP_OVERRIDES += \
    ro.carbon.version=CarbonROM_v9

# AVB Configuration
BOARD_AVB_ENABLE := true

# Additional Configurations
BOARD_BUILD_PRODUCT_IMAGE := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BOARD_PLATFORM := sm7225
PRODUCT_USES_QCOM_HARDWARE := true
