# Carbon ROM Device Configuration for Xiaomi Mi 10i (Gauguin)

# Device and ROM identifiers
DEVICE := gauguin
ROM := carbon

# Inherit Carbon-specific configurations
$(call inherit-product, vendor/$(ROM)/config/gsm.mk)       # GSM telephony parts
$(call inherit-product, vendor/$(ROM)/config/common.mk)    # Common settings

# Inherit device-specific settings
$(call inherit-product, device/xiaomi/$(DEVICE)/device.mk)

# Define product characteristics
PRODUCT_NAME := $(ROM)_$(DEVICE)
PRODUCT_DEVICE := $(DEVICE)
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10i
PRODUCT_MANUFACTURER := Xiaomi

# Replace with the actual GMS client ID provided by Google
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-replace-with-actual-client-id

# Variant-specific configurations
ifeq ($(TARGET_DEVICE),gauguinpro)
    $(call inherit-product, device/xiaomi/$(DEVICE)/gauguinpro.mk)
endif
ifeq ($(TARGET_DEVICE),gauguininpro)
    $(call inherit-product, device/xiaomi/$(DEVICE)/gauguininpro.mk)
endif
