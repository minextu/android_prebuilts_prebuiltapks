LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := BromiteSystemWebView
LOCAL_MULTILIB := both
LOCAL_SRC_FILES := arm64_SystemWebView.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := webview
LOCAL_REQUIRED_MODULES := libwebviewchromium_loader libwebviewchromium_plat_support
include $(BUILD_PREBUILT)
