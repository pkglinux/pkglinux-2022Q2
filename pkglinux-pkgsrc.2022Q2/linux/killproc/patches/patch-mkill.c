$NetBSD$

--- mkill.c.orig	2024-08-13 07:29:45.000000000 +0000
+++ mkill.c
@@ -42,7 +42,7 @@
 # define MNT_EXPIRE	0x00000004
 #endif
 
-extern inline FILE * fopenat(int dirfd, const char *path)
+inline FILE * fopenat(int dirfd, const char *path)
 {
     int fd = openat(dirfd, path, O_RDONLY|O_NONBLOCK|O_LARGEFILE);
     if (fd < 0)
@@ -50,7 +50,7 @@ extern inline FILE * fopenat(int dirfd,
     return fdopen(fd , "r");
 }
 
-extern inline DIR * opendirat(int dirfd, const char *path)
+inline DIR * opendirat(int dirfd, const char *path)
 {
     int fd = openat(dirfd, path, O_RDONLY|O_NONBLOCK|O_LARGEFILE|O_DIRECTORY);
     if (fd < 0)
