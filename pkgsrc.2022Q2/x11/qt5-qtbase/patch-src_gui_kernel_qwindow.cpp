$NetBSD$

--- src/gui/kernel/qwindow.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/gui/kernel/qwindow.cpp
@@ -2440,11 +2440,12 @@ bool QWindow::event(QEvent *ev)
 #endif
 
     case QEvent::PlatformSurface: {
-        if ((static_cast<QPlatformSurfaceEvent *>(ev))->surfaceEventType() == QPlatformSurfaceEvent::SurfaceAboutToBeDestroyed) {
+        if ((static_cast<QPlatformSurfaceEvent *>(ev))->surfaceEventType() != QPlatformSurfaceEvent::SurfaceAboutToBeDestroyed) {
 #ifndef QT_NO_OPENGL
-            QOpenGLContext *context = QOpenGLContext::currentContext();
-            if (context && context->surface() == static_cast<QSurface *>(this))
-                context->doneCurrent();
+//            QOpenGLContext *context = QOpenGLContext::currentContext();
+//            if (context && context->surface() == static_cast<QSurface *>(this))
+//                context->doneCurrent();
+//            QSurface::platformSurfaceEvent(static_cast<QPlatformSurfaceEvent *>(ev));
 #endif
         }
         break;
