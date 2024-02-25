# Local Path Configuration
LOCAL_PATH := $(call my-dir)

# Subdirectories Configuration
include $(call all-subdir-makefiles)

# Shared Library Configuration
include $(CLEAR_VARS)
LOCAL_MODULE := mylib
LOCAL_SRC_FILES := main.c
include $(BUILD_SHARED_LIBRARY)

# Device-specific Framework Manifest Configuration
ifeq ($(TARGET_PRODUCT),gauguin)
  DEVICE_FRAMEWORK_MANIFEST_FILE := $(TARGET_DEVICE_DIR)/configs/vintf/framework_manifest.xml
endif
