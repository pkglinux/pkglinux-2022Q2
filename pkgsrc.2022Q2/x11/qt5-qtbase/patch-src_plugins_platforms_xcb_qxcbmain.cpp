$NetBSD$

--- src/plugins/platforms/xcb/qxcbmain.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/qxcbmain.cpp
@@ -54,7 +54,7 @@ QPlatformIntegration* QXcbIntegrationPlu
 {
     if (!system.compare(QLatin1String("xcb"), Qt::CaseInsensitive)) {
         auto xcbIntegration = new QXcbIntegration(parameters, argc, argv);
-        if (!xcbIntegration->hasDefaultConnection()) {
+        if (!xcbIntegration->hasConnection()) {
             delete xcbIntegration;
             return nullptr;
         }
