$NetBSD$

--- elf/dl-load.c.orig	2020-02-01 11:52:50.000000000 +0000
+++ elf/dl-load.c
@@ -1825,7 +1825,8 @@ open_path (const char *name, size_t name
 		     test whether there is any directory at all.  */
 		  struct stat64 st;
 
-		  buf[buflen - namelen - 1] = '\0';
+		  /* Don't strip the trailing slash when checking for existence of a load path element to handle the special case of the root directory. */
+		  buf[buflen - namelen] = '\0';
 
 		  if (__xstat64 (_STAT_VER, buf, &st) != 0
 		      || ! S_ISDIR (st.st_mode))
