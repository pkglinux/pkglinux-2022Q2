$NetBSD$

--- src/disku.c.orig	2023-06-03 18:14:10.616985021 +0000
+++ src/disku.c
@@ -30,6 +30,7 @@
 #include <errno.h>
 #include <sys/disklabel.h>
 #endif
+#include <errno.h>
 
 #ifdef __DragonFly__
 #include <sys/disklabel32.h>
