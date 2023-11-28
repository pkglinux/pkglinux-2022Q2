$NetBSD$

--- src/gui/kernel/qsurface.h.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/gui/kernel/qsurface.h
@@ -53,6 +53,8 @@ class QPlatformSurface;
 
 class QSurfacePrivate;
 
+class QPlatformSurfaceEvent;
+
 class Q_GUI_EXPORT QSurface
 {
     Q_GADGET
@@ -86,6 +88,14 @@ public:
     virtual QSize size() const = 0;
 
 protected:
+    virtual void platformSurfaceEvent(QPlatformSurfaceEvent *);
+
+private:
+#ifndef QT_NO_OPENGL
+    void contextDoneCurrent();
+#endif
+
+protected:
     explicit QSurface(SurfaceClass type);
 
     SurfaceClass m_type;
