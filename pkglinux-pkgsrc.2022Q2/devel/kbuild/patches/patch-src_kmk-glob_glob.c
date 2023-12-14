$NetBSD$

--- src/kmk/glob/glob.c.orig	2013-11-21 00:11:08.000000000 +0000
+++ src/kmk/glob/glob.c
@@ -209,7 +209,7 @@ my_realloc (p, n)
 #endif /* __GNU_LIBRARY__ || __DJGPP__ */
 
 
-#if !defined __alloca && !defined __GNU_LIBRARY__
+#if !defined __alloca && defined __GNU_LIBRARY__
 
 # ifdef	__GNUC__
 #  undef alloca
