$NetBSD$

--- src/corelib/plugin/qlibrary.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/corelib/plugin/qlibrary.cpp
@@ -409,7 +409,7 @@ inline void QLibraryStore::cleanup()
             if (lib->libraryUnloadCount.loadRelaxed() > 0) {
                 Q_ASSERT(lib->pHnd.loadRelaxed());
                 lib->libraryUnloadCount.storeRelaxed(1);
-#ifdef __GLIBC__
+#ifdef __GLIBC__0
                 // glibc has a bug in unloading from global destructors
                 // see https://bugzilla.novell.com/show_bug.cgi?id=622977
                 // and http://sourceware.org/bugzilla/show_bug.cgi?id=11941
