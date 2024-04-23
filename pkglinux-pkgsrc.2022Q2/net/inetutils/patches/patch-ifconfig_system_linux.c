$NetBSD$

--- ifconfig/system/linux.c.orig	2015-05-12 12:09:01.000000000 +0000
+++ ifconfig/system/linux.c
@@ -50,6 +50,10 @@
 #include "../ifconfig.h"
 
 
+#ifndef PATH_PROCNET_DEV
+  #define PATH_PROCNET_DEV "/proc/net/dev"
+#endif
+
 /* ARPHRD stuff.  */
 
 static void
