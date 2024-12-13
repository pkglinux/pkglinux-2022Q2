$NetBSD$

--- support/nfs/nfsexport.c.orig	2003-08-01 03:42:04.000000000 +0000
+++ support/nfs/nfsexport.c
@@ -12,6 +12,7 @@
 #include <sys/types.h>
 #include <asm/types.h>
 #include <sys/stat.h>
+#include <sys/sysmacros.h>
 #include <unistd.h>
 #include <fcntl.h>
 
