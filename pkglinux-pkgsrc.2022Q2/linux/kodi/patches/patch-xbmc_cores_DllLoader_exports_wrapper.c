$NetBSD$

--- xbmc/cores/DllLoader/exports/wrapper.c.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/cores/DllLoader/exports/wrapper.c
@@ -39,13 +39,13 @@
 #endif
 #include <dlfcn.h>
 
-#if defined(TARGET_DARWIN) || defined(TARGET_FREEBSD) || defined(TARGET_ANDROID)
+#if defined(TARGET_DARWIN) || defined(TARGET_FREEBSD) || defined(TARGET_NETBSD) || defined(TARGET_ANDROID) || defined(TARGET_LINUX)
 typedef off_t     __off_t;
 typedef int64_t   off64_t;
 typedef off64_t   __off64_t;
 typedef fpos_t    fpos64_t;
 #define stat64    stat
-#if defined(TARGET_DARWIN) || defined(TARGET_ANDROID)
+#if defined(TARGET_DARWIN) || defined(TARGET_ANDROID) || defined(TARGET_LINUX)
 #define _G_va_list va_list
 #endif
 #endif
