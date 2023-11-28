$NetBSD$

--- libdisk/md.c.orig	2005-10-07 16:51:35.000000000 +0000
+++ libdisk/md.c
@@ -30,6 +30,7 @@
  * http://oss.sgi.com/projects/GenInfo/SGIGPLNoticeExplan/
  */
 
+#include <sys/sysmacros.h>
 #include "drivers.h"
 #include "md.h"
 
