$NetBSD$

--- src/gui/kernel/qsurface.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/gui/kernel/qsurface.cpp
@@ -42,6 +42,8 @@
 #include <qpa/qplatformintegration.h>
 #include <QtGui/private/qguiapplication_p.h>
 
+#include <QtCore/QEvent>
+
 QT_BEGIN_NAMESPACE
 
 
@@ -144,9 +146,7 @@ QSurface::QSurface(SurfaceClass type)
 QSurface::~QSurface()
 {
 #ifndef QT_NO_OPENGL
-    QOpenGLContext *context = QOpenGLContext::currentContext();
-    if (context && context->surface() == this)
-        context->doneCurrent();
+//    contextDoneCurrent();
 #endif
 }
 
@@ -158,5 +158,24 @@ QSurface::SurfaceClass QSurface::surface
     return m_type;
 }
 
+void QSurface::platformSurfaceEvent(QPlatformSurfaceEvent *e)
+{
+    if (e->surfaceEventType()==QPlatformSurfaceEvent::SurfaceAboutToBeDestroyed)
+    {
+#ifndef QT_NO_OPENGL
+        contextDoneCurrent();
+#endif
+    }
+}
+
+#ifndef QT_NO_OPENGL
+void QSurface::contextDoneCurrent()
+{
+    QOpenGLContext *context = QOpenGLContext::currentContext();
+    if (context && context->surface() == this)
+        context->doneCurrent();
+}
+#endif
+
 QT_END_NAMESPACE
 
