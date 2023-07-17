$NetBSD$

--- tests/regression/client/client.c.orig	2015-12-25 17:39:45.000000000 +0000
+++ tests/regression/client/client.c
@@ -16,6 +16,7 @@
  */
 
 #define _GNU_SOURCE
+#include <sys/socket.h>
 #include <assert.h>
 #include <ctype.h>
 #include <gcrypt.h>
