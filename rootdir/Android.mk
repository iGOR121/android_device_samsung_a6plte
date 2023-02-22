LOCAL_PATH := $(call my-dir)

# Init scripts

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.qcom.early_boot.sh
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.qcom.early_boot.sh
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.qcom.post_boot.sh
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.qcom.post_boot.sh
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.class_main.sh
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.class_main.sh
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.qcom.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.qcom
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := fstab.qcom
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)
#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.qcom.sh
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.qcom.sh
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.recovery.qcom.rc
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.recovery.qcom.rc
#LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.recovery.usb.rc
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.recovery.usb.rc
#LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#include $(BUILD_PREBUILT)

# Common init scripts

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.qcom.usb.rc
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.qcom.usb.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.msm.usb.configfs.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.msm.usb.configfs.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := ueventd.qcom.rc
#LOCAL_MODULE_STEM  := ueventd.rc
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := ueventd.qcom.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.target.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.target.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.a6plte.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.a6plte.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.samsung.bsp.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.samsung.bsp.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.samsung.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.samsung.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)