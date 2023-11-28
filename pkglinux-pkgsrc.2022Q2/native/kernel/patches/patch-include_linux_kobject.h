$NetBSD$

--- include/linux/kobject.h.orig	2022-08-11 11:20:44.000000000 +0000
+++ include/linux/kobject.h
@@ -30,7 +30,7 @@
 
 #define UEVENT_HELPER_PATH_LEN		256
 #define UEVENT_NUM_ENVP			64	/* number of env pointers */
-#define UEVENT_BUFFER_SIZE		2048	/* buffer for the variables */
+#define UEVENT_BUFFER_SIZE		4096	/* buffer for the variables */
 
 #ifdef CONFIG_UEVENT_HELPER
 /* path to the userspace helper executed on an event */
