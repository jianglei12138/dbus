LOCAL_PATH := $(call my-dir)

CIncludes := $(LOCAL_PATH)/..
CFlags := \
	-DDBUS_COMPILATION \
	-DDBUS_MACHINE_UUID_FILE=\"/etc/machine-id\" \
	-Wno-unused-parameter
SharedLibraries := libdbus

# common

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	dbus-print-message.c \
	tool-common.c 
LOCAL_C_INCLUDES += $(CIncludes)
LOCAL_SHARED_LIBRARIES += $(SharedLibraries)
LOCAL_CFLAGS += $(CFlags)
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE := libdbus-tools-common
include $(BUILD_STATIC_LIBRARY)

# dbus-monitor

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dbus-monitor.c
LOCAL_C_INCLUDES += $(CIncludes)
LOCAL_SHARED_LIBRARIES += $(SharedLibraries)
LOCAL_STATIC_LIBRARIES += libdbus-tools-common
LOCAL_CFLAGS += $(CFlags)
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE := dbus-monitor
include $(BUILD_EXECUTABLE)

# dbus-send

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dbus-send.c
LOCAL_C_INCLUDES += $(CIncludes)
LOCAL_SHARED_LIBRARIES += $(SharedLibraries)
LOCAL_STATIC_LIBRARIES += libdbus-tools-common
LOCAL_CFLAGS += $(CFlags)
LOCAL_MODULE := dbus-send
include $(BUILD_EXECUTABLE)

# dbus-launch

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
			dbus-launch.c \
			dbus-launch-x11.c
LOCAL_C_INCLUDES += $(CIncludes)
LOCAL_SHARED_LIBRARIES += $(SharedLibraries)
LOCAL_STATIC_LIBRARIES += libdbus-tools-common
LOCAL_CFLAGS += $(CFlags)
LOCAL_MODULE := dbus-launch
include $(BUILD_EXECUTABLE)

