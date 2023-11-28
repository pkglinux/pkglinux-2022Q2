$NetBSD$

--- libdisk/xvm.c.orig	2005-10-07 16:51:35.000000000 +0000
+++ libdisk/xvm.c
@@ -37,6 +37,7 @@
 #include <sys/stat.h>
 #include <sys/ioctl.h>
 #include <disk/volume.h>
+#include <sys/sysmacros.h>
 #include "xvm.h"
 
 int
