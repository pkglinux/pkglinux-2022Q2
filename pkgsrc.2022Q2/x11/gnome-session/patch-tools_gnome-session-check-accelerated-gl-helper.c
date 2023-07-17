$NetBSD$

--- tools/gnome-session-check-accelerated-gl-helper.c.orig	2021-04-28 08:32:22.895144500 +0000
+++ tools/gnome-session-check-accelerated-gl-helper.c
@@ -443,6 +443,7 @@ static const GOptionEntry entries[] = {
         { NULL },
 };
 
+#include <syslog.h>
 int
 main (int argc, char **argv)
 {
@@ -453,6 +454,9 @@ main (int argc, char **argv)
         GError         *error = NULL;
         char           *renderer = NULL;
 
+setlogmask (LOG_UPTO (LOG_NOTICE));
+openlog ("gllog", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
+syslog (LOG_NOTICE, "glProgram started by User %d", getuid ());
         setlocale (LC_ALL, "");
 
         context = g_option_context_new (NULL);
@@ -464,6 +468,7 @@ main (int argc, char **argv)
                 goto out;
         }
 
+syslog (LOG_NOTICE, "gl-001");
         kcmdline_parsed = _parse_kcmdline ();
         if (kcmdline_parsed > CMDLINE_UNSET) {
                 if (kcmdline_parsed == CMDLINE_NON_FALLBACK_FORCED) {
@@ -476,39 +481,47 @@ main (int argc, char **argv)
                 }
         }
 
+syslog (LOG_NOTICE, "gl-002");
         display = XOpenDisplay (NULL);
         if (!display) {
                 _print_error ("No X display.");
                 goto out;
         }
 
+syslog (LOG_NOTICE, "gl-003");
         if (!_has_composite (display)) {
                 _print_error ("No composite extension.");
                 goto out;
         }
 
+syslog (LOG_NOTICE, "gl-004");
         renderer = _get_hardware_gl (display);
         if (!renderer) {
                 _print_error ("No hardware 3D support.");
                 goto out;
         }
 
+syslog (LOG_NOTICE, "gl-005");
         if (!_has_texture_from_pixmap (display)) {
                 _print_error ("No GLX_EXT_texture_from_pixmap support.");
                 goto out;
         }
 
+syslog (LOG_NOTICE, "gl-006");
         if (!_is_max_texture_size_big_enough (display)) {
                 _print_error ("GL_MAX_{TEXTURE,RENDERBUFFER}_SIZE is too small.");
                 goto out;
         }
 
+syslog (LOG_NOTICE, "gl-007");
         ret = has_llvmpipe ? HELPER_SOFTWARE_RENDERING : HELPER_ACCEL;
 
         if (print_renderer)
                 g_print ("%s", renderer);
 
 out:
+syslog (LOG_NOTICE, "glout");
+closelog();
         if (display)
                 XCloseDisplay (display);
         g_free (renderer);
