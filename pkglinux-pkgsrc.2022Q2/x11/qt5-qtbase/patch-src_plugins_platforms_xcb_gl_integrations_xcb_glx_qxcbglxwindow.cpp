$NetBSD$

--- src/plugins/platforms/xcb/gl_integrations/xcb_glx/qxcbglxwindow.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/gl_integrations/xcb_glx/qxcbglxwindow.cpp
@@ -58,7 +58,7 @@ const xcb_visualtype_t *QXcbGlxWindow::c
 {
     QXcbScreen *scr = xcbScreen();
     if (!scr)
-        return nullptr;
+        return QXcbWindow::createVisual();
 
     qCDebug(lcQpaGl) << "Requested format before FBConfig/Visual selection:" << m_format;
 
@@ -71,10 +71,13 @@ const xcb_visualtype_t *QXcbGlxWindow::c
             flags |= QGLX_SUPPORTS_SRGB;
     }
 
+    const auto formatBackup = m_format;
     XVisualInfo *visualInfo = qglx_findVisualInfo(dpy, scr->screenNumber(), &m_format, GLX_WINDOW_BIT, flags);
     if (!visualInfo) {
-        qWarning() << "No XVisualInfo for format" << m_format;
-        return nullptr;
+        qCDebug(lcQpaGl) << "No XVisualInfo for format" << m_format;
+        // restore initial format before requesting it again
+        m_format = formatBackup;
+        return QXcbWindow::createVisual();
     }
     const xcb_visualtype_t *xcb_visualtype = scr->visualForId(visualInfo->visualid);
     XFree(visualInfo);
