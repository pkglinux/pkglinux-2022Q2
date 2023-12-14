$NetBSD$

--- src/kmk/default.c.orig	2008-11-04 03:25:19.000000000 +0000
+++ src/kmk/default.c
@@ -469,9 +469,9 @@ static const char *default_variables[] =
 #endif	/* CRAY.  */
 #endif	/* pyr.  */
 #ifdef GCC_IS_NATIVE
-    "YACC", "bison -y",
+    "YACC", "bison -y -d",
 #else
-    "YACC", "yacc",	/* Or "bison -y"  */
+    "YACC", "bison -y -d",	/* Or "bison -y"  */
 #endif
     "MAKEINFO", "makeinfo",
     "TEX", "tex",
