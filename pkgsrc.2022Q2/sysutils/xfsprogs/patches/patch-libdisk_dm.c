$NetBSD$

--- libdisk/dm.c.orig	2023-04-11 16:31:02.822108482 +0000
+++ libdisk/dm.c
@@ -30,6 +30,7 @@
  * http://oss.sgi.com/projects/GenInfo/SGIGPLNoticeExplan/
  */
 
+#include <sys/sysmacros.h>
 #include "drivers.h"
 
 int
