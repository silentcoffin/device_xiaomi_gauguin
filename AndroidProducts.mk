# Define common variables
LOCAL_PRODUCT_NAME := carbon
LOCAL_DEVICE := gauguin

# Common settings for all build variants
PRODUCT_DEVICE := $(LOCAL_DEVICE)
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10i
PRODUCT_MANUFACTURER := Xiaomi

# Path to the CarbonROM-specific device makefile
PRODUCT_MAKEFILES := \\
    $(LOCAL_DIR)/$(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE).mk

# Include CarbonROM common configurations
$(call inherit-product, vendor/$(LOCAL_PRODUCT_NAME)/config/common_full_phone.mk)

# Build variant specific settings
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    PRODUCT_NAME := $(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE)-userdebug
endif

ifeq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_NAME := $(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE)-user
endif

ifeq ($(TARGET_BUILD_VARIANT),eng)
    PRODUCT_NAME := $(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE)-eng
endif

# Additional features and settings
PRODUCT_PROPERTY_OVERRIDES += \\
    ro.$(LOCAL_PRODUCT_NAME).version=$(CARBON_VERSION) \\
    ro.$(LOCAL_PRODUCT_NAME).buildtype=$(TARGET_BUILD_VARIANT)

# Define the default system language and locale for India
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := IN
