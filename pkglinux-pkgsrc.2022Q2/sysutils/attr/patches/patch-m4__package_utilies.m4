$NetBSD$

--- m4/package_utilies.m4.orig	2013-05-19 04:53:54.000000000 +0000
+++ m4/package_utilies.m4
@@ -43,6 +43,8 @@ AC_DEFUN([AC_PACKAGE_UTILITIES],
     AC_SUBST(make)
     AC_PACKAGE_NEED_UTILITY($1, "$make", make, [GNU make])
 
+    AC_PROG_LIBTOOL
+
     AC_PATH_PROG(TAR, tar,, $search_path)
     tar=$TAR
     AC_SUBST(tar)
