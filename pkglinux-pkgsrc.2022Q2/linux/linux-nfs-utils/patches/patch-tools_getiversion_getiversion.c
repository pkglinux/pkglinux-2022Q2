$NetBSD$

--- tools/getiversion/getiversion.c.orig	1999-10-18 23:21:12.000000000 +0000
+++ tools/getiversion/getiversion.c
@@ -16,7 +16,7 @@ int
 main(int argc, char **argv)
 {
 	int	i, fd;
-	u_int32_t	vers;
+	unsigned int	vers;
 
 	if (argc <= 1) {
 		fprintf(stderr, "usage: getiversion file ...\n");
