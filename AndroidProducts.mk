# Common variables for device and ROM
LOCAL_PRODUCT_NAME := carbon
LOCAL_DEVICE := gauguin

# Set product characteristics for all build variants
PRODUCT_DEVICE := $(LOCAL_DEVICE)
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10i
PRODUCT_MANUFACTURER := Xiaomi

# Path to the CarbonROM-specific device makefile
PRODUCT_MAKEFILES := \\
    $(LOCAL_DIR)/$(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE).mk

# Include common configurations for CarbonROM
$(call inherit-product, vendor/$(LOCAL_PRODUCT_NAME)/config/common_full_phone.mk)

# Define build variant specific product names
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    PRODUCT_NAME := $(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE)-userdebug
endif
ifeq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_NAME := $(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE)-user
endif
ifeq ($(TARGET_BUILD_VARIANT),eng)
    PRODUCT_NAME := $(LOCAL_PRODUCT_NAME)_$(LOCAL_DEVICE)-eng
endif

# Set additional features and overrides for the product
PRODUCT_PROPERTY_OVERRIDES += \\
    ro.$(LOCAL_PRODUCT_NAME).version=$(CARBON_VERSION) \\
    ro.$(LOCAL_PRODUCT_NAME).buildtype=$(TARGET_BUILD_VARIANT)

# Configure the default system language and locale for the Indian market
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := IN
