$NetBSD$

--- src/corelib/plugin/qfactoryloader.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/corelib/plugin/qfactoryloader.cpp
@@ -295,7 +295,6 @@ void QFactoryLoader::update()
                 }
             }
             if (keyUsageCount || keys.isEmpty()) {
-                library->setLoadHints(QLibrary::PreventUnloadHint); // once loaded, don't unload
                 QMutexLocker locker(&d->mutex);
                 d->libraryList += library;
             } else {
