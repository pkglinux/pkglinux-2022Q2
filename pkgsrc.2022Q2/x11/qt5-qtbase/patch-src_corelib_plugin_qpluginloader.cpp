$NetBSD$

--- src/corelib/plugin/qpluginloader.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/corelib/plugin/qpluginloader.cpp
@@ -155,7 +155,6 @@ QPluginLoader::QPluginLoader(const QStri
     : QObject(parent), d(nullptr), did_load(false)
 {
     setFileName(fileName);
-    setLoadHints(QLibrary::PreventUnloadHint);
 }
 
 /*!
@@ -357,7 +356,7 @@ static QString locatePlugin(const QStrin
 void QPluginLoader::setFileName(const QString &fileName)
 {
 #if defined(QT_SHARED)
-    QLibrary::LoadHints lh = QLibrary::PreventUnloadHint;
+    QLibrary::LoadHints lh;
     if (d) {
         lh = d->loadHints();
         d->release();
