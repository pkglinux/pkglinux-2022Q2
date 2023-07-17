$NetBSD$

--- src/corelib/plugin/qlibrary_unix.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/corelib/plugin/qlibrary_unix.cpp
@@ -290,6 +290,7 @@ bool QLibraryPrivate::load_sys()
 
 bool QLibraryPrivate::unload_sys()
 {
+	return true;
     if (dlclose(pHnd.loadAcquire())) {
 #if defined (Q_OS_QNX)                // Workaround until fixed in QNX; fixes crash in
         char *error = dlerror();      // QtDeclarative auto test "qqmlenginecleanup" for instance
