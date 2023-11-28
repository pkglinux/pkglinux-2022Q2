$NetBSD$

--- libfs/devices.c.orig	2009-03-23 15:37:05.000000000 +0000
+++ libfs/devices.c
@@ -40,6 +40,7 @@
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <sys/ioctl.h>
+#include <sys/sysmacros.h>
 #if defined(__DragonFly__)
 #include <machine/param.h>
 #include <sys/diskslice.h>
