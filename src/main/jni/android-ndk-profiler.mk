TARGET_thumb_release_CFLAGS := $(filter-out -ffunction-sections,$(TARGET_thumb_release_CFLAGS))
TARGET_thumb_release_CFLAGS := $(filter-out -fomit-frame-pointer,$(TARGET_thumb_release_CFLAGS))
TARGET_arm_release_CFLAGS := $(filter-out -ffunction-sections,$(TARGET_arm_release_CFLAGS))
TARGET_arm_release_CFLAGS := $(filter-out -fomit-frame-pointer,$(TARGET_arm_release_CFLAGS))
TARGET_CFLAGS := $(filter-out -ffunction-sections,$(TARGET_CFLAGS))

LOCAL_PATH := $(call my-dir)

# include libandprof.a in the build
include $(CLEAR_VARS)
LOCAL_MODULE := andprof
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/andprof.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)
LOCAL_EXPORT_LDLIBS := -llog
include $(PREBUILT_STATIC_LIBRARY)
