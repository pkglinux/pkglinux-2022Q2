$NetBSD$

--- vhangup.c.orig	2024-08-13 07:29:45.000000000 +0000
+++ vhangup.c
@@ -59,7 +59,7 @@ static void add_proc(pid_t pid)
     ptr->pid = pid;
 }
 
-extern inline DIR * opendirat(int dirfd, const char *path)
+inline DIR * opendirat(int dirfd, const char *path)
 {
     int fd = openat(dirfd, path, O_RDONLY|O_NONBLOCK|O_LARGEFILE|O_DIRECTORY);
     if (fd < 0)
