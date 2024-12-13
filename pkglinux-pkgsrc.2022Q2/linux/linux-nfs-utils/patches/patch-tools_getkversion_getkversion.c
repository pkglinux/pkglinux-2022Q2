$NetBSD$

--- tools/getkversion/getkversion.c.orig	1999-10-18 23:21:12.000000000 +0000
+++ tools/getkversion/getkversion.c
@@ -12,6 +12,6 @@
 int
 main(void)	/* This is for Dan Popp ;) */
 {
-	printf("%s\n", UTS_RELEASE);
+	printf("%s\n", "UTS_RELEASE");
 	return 0;
 }
