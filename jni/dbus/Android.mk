# Set to true to write libdbus logs to logcat instead of stderr
# See also config.h to turn on verbose logs
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	dbus-asv-util.c               dbus-shell.c \
	dbus-auth-script.c            dbus-socket-set-poll.c \
	dbus-auth-util.c              dbus-socket-set.c \
	dbus-credentials-util.c       dbus-spawn.c \
	dbus-mainloop.c               dbus-string-util.c \
	dbus-marshal-byteswap-util.c  dbus-sysdeps-util-unix.c \
	dbus-marshal-recursive-util.c dbus-sysdeps-util.c \
	dbus-marshal-validate-util.c  dbus-test.c \
	dbus-message-factory.c        dbus-userdb-util.c \
	dbus-message-util.c \
	dbus-address.c           dbus-pending-call.c \
	dbus-auth.c              dbus-pipe-unix.c \
	dbus-bus.c               dbus-pipe.c \
	dbus-connection.c        dbus-resources.c \
	dbus-credentials.c       dbus-server-debug-pipe.c \
	dbus-dataslot.c          dbus-server-socket.c \
	dbus-errors.c            dbus-server-unix.c \
	dbus-file-unix.c         dbus-server.c \
	dbus-file.c              dbus-sha.c \
	dbus-hash.c              dbus-signature.c \
	dbus-internals.c         dbus-string.c \
	dbus-keyring.c           dbus-syntax.c \
	dbus-list.c              dbus-sysdeps-pthread.c \
	dbus-marshal-basic.c     dbus-sysdeps-unix.c \
	dbus-marshal-byteswap.c  dbus-sysdeps.c \
	dbus-marshal-header.c    dbus-threads.c \
	dbus-marshal-recursive.c dbus-timeout.c \
	dbus-marshal-validate.c  dbus-transport-socket.c \
	dbus-memory.c            dbus-transport-unix.c \
	dbus-mempool.c           dbus-transport.c \
	dbus-message.c           dbus-userdb.c \
	dbus-misc.c              dbus-uuidgen.c \
	dbus-nonce.c             dbus-watch.c \
	dbus-object-tree.c \
	

LOCAL_C_INCLUDES+= $(LOCAL_PATH)/..

LOCAL_MODULE:=libdbus

LOCAL_CFLAGS+= \
	-DDBUS_COMPILATION \
	-DDBUS_MACHINE_UUID_FILE=\"/etc/machine-id\" \
	-DDBUS_SYSTEM_CONFIG_FILE=\"/system/etc/dbus.conf\" \
	-DDBUS_SESSION_CONFIG_FILE=\"/system/etc/session.conf\" \


include $(BUILD_SHARED_LIBRARY)
