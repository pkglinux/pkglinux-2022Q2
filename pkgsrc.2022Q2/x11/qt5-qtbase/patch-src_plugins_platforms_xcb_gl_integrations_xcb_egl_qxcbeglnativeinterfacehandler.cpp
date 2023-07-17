$NetBSD$

--- src/plugins/platforms/xcb/gl_integrations/xcb_egl/qxcbeglnativeinterfacehandler.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/gl_integrations/xcb_egl/qxcbeglnativeinterfacehandler.cpp
@@ -107,7 +107,7 @@ QPlatformNativeInterface::NativeResource
 void *QXcbEglNativeInterfaceHandler::eglDisplay()
 {
     QXcbIntegration *integration = QXcbIntegration::instance();
-    QXcbEglIntegration *eglIntegration = static_cast<QXcbEglIntegration *>(integration->defaultConnection()->glIntegration());
+    QXcbEglIntegration *eglIntegration = static_cast<QXcbEglIntegration *>(integration->connection()->glIntegration());
     return eglIntegration->eglDisplay();
 }
 
