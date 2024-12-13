$NetBSD$

--- libinit.c.orig	2024-08-13 07:29:45.000000000 +0000
+++ libinit.c
@@ -371,7 +371,7 @@ static int find_mount(const char * path,
     return ret;
 }
 
-extern inline char * handl_buf(char *restrict buf)
+inline char * handl_buf(char *restrict buf)
 {
     char * ptr = strstr(buf, " (deleted)");
     if (ptr)
