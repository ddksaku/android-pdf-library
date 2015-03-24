LOCAL_PATH := $(call my-dir)

ifdef NDK_PROFILER
include android-ndk-profiler.mk
endif

include $(LOCAL_PATH)/Core.mk
include $(LOCAL_PATH)/ThirdParty.mk



include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	andprof \
	include\
	source/fitz\
	source/pdf

LOCAL_MODULE:= mupdf
LOCAL_SRC_FILES := mupdf.c

LOCAL_STATIC_LIBRARIES := mupdfcore mupdfthirdparty
ifdef NDK_PROFILER
LOCAL_CFLAGS += -pg -DNDK_PROFILER
LOCAL_STATIC_LIBRARIES += andprof
else
endif

LOCAL_LDLIBS    := -lm -llog -ljnigraphics
ifdef SSL_BUILD
LOCAL_LDLIBS	+= -L$(LOCAL_PATH)/thirdparty/openssl/android -lcrypto -lssl
endif

include $(BUILD_SHARED_LIBRARY)
