$NetBSD$

--- src/plugins/platforms/xcb/gl_integrations/xcb_glx/qxcbglxintegration.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/gl_integrations/xcb_glx/qxcbglxintegration.cpp
@@ -101,6 +101,8 @@ QXcbGlxIntegration::QXcbGlxIntegration()
 
 QXcbGlxIntegration::~QXcbGlxIntegration()
 {
+    delete m_connection;
+    m_connection = nullptr;
 }
 
 bool QXcbGlxIntegration::initialize(QXcbConnection *connection)
