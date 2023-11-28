$NetBSD$

--- Xvnc/config/util/mkshadow/mkshadow.c.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/config/util/mkshadow/mkshadow.c
@@ -44,6 +44,7 @@
  * to more-or-less follow Posix.
  */
 
+#include <stdlib.h>
 #include <sys/types.h>
 #include <stdio.h>
 #ifdef BSD
