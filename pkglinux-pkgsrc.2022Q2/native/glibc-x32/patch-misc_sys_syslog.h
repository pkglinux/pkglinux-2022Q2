$NetBSD$

--- misc/sys/syslog.h.orig	2020-02-01 11:52:50.000000000 +0000
+++ misc/sys/syslog.h
@@ -203,7 +203,7 @@ extern void vsyslog (int __pri, const ch
 
 
 /* Define some macros helping to catch buffer overflows.  */
-#if __USE_FORTIFY_LEVEL > 0 && defined __fortify_function
+#if __USE_FORTIFY_LEVEL > 0 && !defined __fortify_function
 # include <bits/syslog.h>
 #endif
 #ifdef __LDBL_COMPAT
