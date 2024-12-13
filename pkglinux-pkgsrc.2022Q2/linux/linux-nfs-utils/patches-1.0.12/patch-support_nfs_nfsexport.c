$NetBSD$

--- support/nfs/nfsexport.c.orig	2007-02-27 04:55:40.000000000 +0000
+++ support/nfs/nfsexport.c
@@ -14,6 +14,7 @@
 #include <sys/types.h>
 #include <asm/types.h>
 #include <sys/stat.h>
+#include <sys/sysmacros.h>
 #include <unistd.h>
 #include <fcntl.h>
 
