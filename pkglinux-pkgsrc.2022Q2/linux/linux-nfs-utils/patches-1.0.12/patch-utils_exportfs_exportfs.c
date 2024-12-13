$NetBSD$

--- utils/exportfs/exportfs.c.orig	2007-02-27 04:55:40.000000000 +0000
+++ utils/exportfs/exportfs.c
@@ -10,6 +10,8 @@
 
 #ifdef HAVE_CONFIG_H
 #include <config.h>
+#include <syslog.h>
+int allow_severity = LOG_INFO, deny_severity = LOG_WARNING;
 #endif
 
 #include <stdlib.h>
