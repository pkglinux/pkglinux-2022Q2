$NetBSD$

--- utils/mountd/cache.c.orig	2003-08-11 05:54:06.000000000 +0000
+++ utils/mountd/cache.c
@@ -11,6 +11,7 @@
 #include <sys/types.h>
 #include <sys/select.h>
 #include <sys/stat.h>
+#include <sys/sysmacros.h>
 #include <time.h>
 #include <netinet/in.h>
 #include <arpa/inet.h>
