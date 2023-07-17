$NetBSD$

--- lib/libf2fs.c.orig	2017-09-21 23:15:40.000000000 +0000
+++ lib/libf2fs.c
@@ -19,6 +19,7 @@
 #include <sys/stat.h>
 #include <sys/mount.h>
 #include <sys/ioctl.h>
+#include <sys/sysmacros.h>
 #ifndef WITH_ANDROID
 #include <scsi/sg.h>
 #endif
