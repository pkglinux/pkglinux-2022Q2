$NetBSD$

--- support/nfs/xio.c.orig	2007-02-27 04:55:40.000000000 +0000
+++ support/nfs/xio.c
@@ -57,7 +57,7 @@ xflock(char *fname, char *type)
 	struct flock	fl = { readonly? F_RDLCK : F_WRLCK, SEEK_SET, 0, 0, 0 };
 	int		fd;
 
-	if ((fd = open(fname, readonly? O_RDONLY : (O_RDWR|O_CREAT))) < 0) {
+	if ((fd = open(fname, readonly? O_RDONLY : (O_RDWR|O_CREAT), 0600)) < 0) {
 		xlog(L_WARNING, "could not open %s for locking", fname);
 		return -1;
 	}
