LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/.. \
	$(LOCAL_PATH)/libexpat/include

LOCAL_CFLAGS:= \
	-O3 \
	-DDBUS_COMPILATION \
	-DDBUS_DAEMON_NAME=\"dbus-daemon\" \
	-DDBUS_SYSTEM_CONFIG_FILE=\"/system/etc/dbus.conf\" \
	-DDBUS_SESSION_CONFIG_FILE=\"/system/etc/session.conf\" \
	-Wno-address \
	-Wno-empty-body \
	-Wno-pointer-sign \
	-Wno-sign-compare \
	-Wno-unused-parameter

LOCAL_SRC_FILES:= \
	activation.c			\
	apparmor.c				\
	audit.c					\
	bus.c					\
	config-parser.c			\
	config-parser-common.c	\
	connection.c			\
	desktop-file.c			\
	dir-watch-default.c     \
	dispatch.c				\
	driver.c				\
	expirelist.c			\
	policy.c				\
	selinux.c				\
	services.c				\
	signals.c				\
	stats.c					\
	test.c					\
	utils.c					\
	main.c 					\
	config-loader-expat.c


LOCAL_SHARED_LIBRARIES := \
	libexpat \
	libdbus

LOCAL_MODULE:=dbus-daemon

include $(BUILD_EXECUTABLE)
include $(LOCAL_PATH)/libexpat/Android.mk