$NetBSD$

--- Xvnc/config/util/mkshadow/savedir.c.orig	2000-06-11 12:00:51.000000000 +0000
+++ Xvnc/config/util/mkshadow/savedir.c
@@ -17,6 +17,7 @@
 /* Written by David MacKenzie <djm@ai.mit.edu>.
    Modified to use <dirent.h> by default.  Per Bothner <bothner@cygnus.com>. */
 
+#define STDC_HEADERS
 #include <sys/types.h>
 #if !defined(DIRECT) && !defined(BSD)
 #include <dirent.h>
