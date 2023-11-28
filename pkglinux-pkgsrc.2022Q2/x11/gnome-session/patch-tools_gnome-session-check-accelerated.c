$NetBSD$

--- tools/gnome-session-check-accelerated.c.orig	2021-04-28 08:32:22.895144500 +0000
+++ tools/gnome-session-check-accelerated.c
@@ -24,6 +24,7 @@
 #include <string.h>
 #include <unistd.h>
 #include <stdlib.h>
+#include <syslog.h>
 
 #include <gtk/gtk.h>
 #include <epoxy/gl.h>
@@ -139,6 +140,11 @@ main (int argc, char **argv)
         glong is_accelerated, is_software_rendering;
         GError *gl_error = NULL, *gles_error = NULL;
 
+setlogmask (LOG_UPTO (LOG_NOTICE));
+openlog ("/var/log/gnome.log", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
+syslog (LOG_NOTICE, "Program started by User %d", getuid ());
+syslog (LOG_NOTICE, "before gtk_init");
+
         gtk_init (NULL, NULL);
 
         /* gnome-session-check-accelerated gets run before X is started in the wayland
@@ -156,6 +162,7 @@ main (int argc, char **argv)
                 return 1;
         }
 
+syslog (LOG_NOTICE, "gtk_display_get_default");
         display = gdk_display_get_default ();
         /* when running on X11 with a nested wayland GDK will default to wayland
          * so looking for X11 atoms will not work (and crash).
@@ -171,6 +178,7 @@ main (int argc, char **argv)
         is_software_rendering_atom = gdk_x11_get_xatom_by_name_for_display (display, "_GNOME_IS_SOFTWARE_RENDERING");
         renderer_atom = gdk_x11_get_xatom_by_name_for_display (display, "_GNOME_SESSION_RENDERER");
 
+syslog (LOG_NOTICE, "block");
         {
                 Atom type;
                 gint format;
@@ -221,6 +229,7 @@ main (int argc, char **argv)
         is_software_rendering = FALSE;
         estatus = 1;
 
+syslog (LOG_NOTICE, "XCh");
         XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
                          rootwin,
                          is_accelerated_atom,
@@ -228,32 +237,35 @@ main (int argc, char **argv)
 
         gdk_display_sync (display);
 
-        /* First, try the GL helper */
-        if (g_spawn_sync (NULL, (char **) gl_helper_argv, NULL, 0,
-                           NULL, NULL, &gl_renderer_string, NULL, &estatus, &gl_error)) {
+syslog (LOG_NOTICE, "g_spawn_sync gles_helper");
+        /* Then, try the GLES helper */
+        if (g_spawn_sync (NULL, (char **) gles_helper_argv, NULL, 0,
+                           NULL, NULL, &gles_renderer_string, NULL, &estatus, &gles_error)) {
                 is_accelerated = (WEXITSTATUS(estatus) == HELPER_ACCEL);
-                gl_software_rendering = (WEXITSTATUS(estatus) == HELPER_SOFTWARE_RENDERING);
+                gles_software_rendering = (WEXITSTATUS(estatus) == HELPER_SOFTWARE_RENDERING);
                 if (is_accelerated) {
-                        renderer_string = gl_renderer_string;
+                        renderer_string = gles_renderer_string;
                         goto finish;
                 }
 
-                g_printerr ("gnome-session-check-accelerated: GL Helper exited with code %d\n", estatus);
+                g_printerr ("gnome-session-check-accelerated: GLES Helper exited with code %d\n", estatus);
         }
 
-        /* Then, try the GLES helper */
-        if (g_spawn_sync (NULL, (char **) gles_helper_argv, NULL, 0,
-                           NULL, NULL, &gles_renderer_string, NULL, &estatus, &gles_error)) {
+syslog (LOG_NOTICE, "g_spawn_sync gl_helper");
+        /* First, try the GL helper */
+        if (g_spawn_sync (NULL, (char **) gl_helper_argv, NULL, 0,
+                           NULL, NULL, &gl_renderer_string, NULL, &estatus, &gl_error)) {
                 is_accelerated = (WEXITSTATUS(estatus) == HELPER_ACCEL);
-                gles_software_rendering = (WEXITSTATUS(estatus) == HELPER_SOFTWARE_RENDERING);
+                gl_software_rendering = (WEXITSTATUS(estatus) == HELPER_SOFTWARE_RENDERING);
                 if (is_accelerated) {
-                        renderer_string = gles_renderer_string;
+                        renderer_string = gl_renderer_string;
                         goto finish;
                 }
 
-                g_printerr ("gnome-session-check-accelerated: GLES Helper exited with code %d\n", estatus);
+                g_printerr ("gnome-session-check-accelerated: GL Helper exited with code %d\n", estatus);
         }
 
+syslog (LOG_NOTICE, "gl_software_rendering or gles");
         /* If we got here, GL software rendering is our best bet */
         if (gl_software_rendering || gles_software_rendering) {
                 is_software_rendering = TRUE;
@@ -279,6 +291,10 @@ main (int argc, char **argv)
         }
 
  finish:
+syslog (LOG_NOTICE, "finishing");
+closelog ();
+
+syslog (LOG_NOTICE, "XchangeProperty1");
 	if (is_accelerated) {
 		XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
 				rootwin,
@@ -286,6 +302,7 @@ main (int argc, char **argv)
 				XA_CARDINAL, 32, PropModeReplace, (guchar *) &is_accelerated, 1);
 	}
 
+syslog (LOG_NOTICE, "XchangeProperty2");
 	if (is_software_rendering) {
 		XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
 				rootwin,
@@ -293,6 +310,7 @@ main (int argc, char **argv)
 				XA_CARDINAL, 32, PropModeReplace, (guchar *) &is_software_rendering, 1);
 	}
 
+syslog (LOG_NOTICE, "XchangeProperty3");
         if (renderer_string != NULL) {
                 XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
 				rootwin,
@@ -303,9 +321,12 @@ main (int argc, char **argv)
                 g_print ("%s", renderer_string);
         }
 
+syslog (LOG_NOTICE, "gdk_display_sync");
         gdk_display_sync (display);
 
+syslog (LOG_NOTICE, "gfree gl");
         g_free (gl_renderer_string);
+syslog (LOG_NOTICE, "gfree gles");
         g_free (gles_renderer_string);
 
         return is_accelerated ? 0 : 1;
