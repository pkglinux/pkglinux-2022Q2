$NetBSD$

--- tools/getiversion/getiversion.c.orig	2007-02-27 04:55:40.000000000 +0000
+++ tools/getiversion/getiversion.c
@@ -21,13 +21,14 @@
 #endif
 
 #include <stdio.h>
+#include <stdint.h>
 #include <sys/fs/ext2fs.h>
 
 int
 main(int argc, char **argv)
 {
 	int	i, fd;
-	u_int32_t	vers;
+	unsigned int	vers;
 
 	if (argc <= 1) {
 		fprintf(stderr, "usage: getiversion file ...\n");
