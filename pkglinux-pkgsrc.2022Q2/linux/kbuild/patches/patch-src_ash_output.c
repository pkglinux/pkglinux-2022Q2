$NetBSD$

--- src/ash/output.c.orig	2007-01-29 05:54:36.000000000 +0000
+++ src/ash/output.c
@@ -230,8 +230,8 @@ out1fmt(const char *fmt, ...)
 	va_end(ap);
 }
 
-void
-dprintf(const char *fmt, ...)
+int
+dprintf(int fd, const char *fmt, ...)
 {
 	va_list ap;
 
