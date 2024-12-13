$NetBSD$

--- utils/mountd/cache.c.orig	2007-02-27 04:55:40.000000000 +0000
+++ utils/mountd/cache.c
@@ -14,6 +14,7 @@
 #include <sys/types.h>
 #include <sys/select.h>
 #include <sys/stat.h>
+#include <sys/sysmacros.h>
 #include <time.h>
 #include <netinet/in.h>
 #include <arpa/inet.h>
