$NetBSD$

--- ./src/kmk/glob/glob.c.orig	2008-10-29 22:14:48.000000000 +0000
+++ ./src/kmk/glob/glob.c
@@ -212,7 +212,7 @@ my_realloc (p, n)
 #endif /* __GNU_LIBRARY__ */
 
 
-#if !defined __alloca && !defined __GNU_LIBRARY__
+#if !defined __alloca && defined __GNU_LIBRARY__
 
 # ifdef	__GNUC__
 #  undef alloca
