$NetBSD$

--- gdk/x11/gdkdisplay-x11.c.orig	2021-10-29 20:05:00.979499600 +0000
+++ gdk/x11/gdkdisplay-x11.c
@@ -2966,6 +2966,7 @@ gdk_x11_display_init_gl_backend (GdkX11D
    * EGL, we want to avoid using it in favor of GLX.
    */
 
+  if (gdk_x11_display_init_glx (self, out_visual, out_depth, error)) return TRUE;
   if (!gdk_display_init_egl (display, EGL_PLATFORM_X11_KHR, dpy, FALSE, error))
     {
       g_clear_error (error);
