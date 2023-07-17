$NetBSD$

--- src/plugins/platforms/xcb/qxcbconnection.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/qxcbconnection.cpp
@@ -152,6 +152,7 @@ QXcbConnection::~QXcbConnection()
     delete m_glIntegration;
 
     delete m_keyboard;
+    delete m_nativeInterface, m_focusWindow, m_mouseGrabber, m_mousePressWindow, m_systemTrayTracker;
 }
 
 QXcbScreen *QXcbConnection::primaryScreen() const
