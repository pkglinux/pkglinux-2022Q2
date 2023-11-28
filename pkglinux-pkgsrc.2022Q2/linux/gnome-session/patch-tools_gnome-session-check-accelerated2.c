$NetBSD$

--- tools/gnome-session-check-accelerated.c.orig	2021-04-28 08:32:22.895144500 +0000
+++ tools/gnome-session-check-accelerated.c
@@ -147,14 +147,6 @@ main (int argc, char **argv)
          * Also make sure that we don't read cached information about the first GPU
          * when requesting information about the second.
          */
-        if (is_discrete_gpu_check () || g_strcmp0 (g_getenv ("XDG_SESSION_TYPE"), "x11") != 0) {
-                renderer_string = get_gtk_gles_renderer ();
-                if (renderer_string) {
-                        g_print ("%s", renderer_string);
-                        return 0;
-                }
-                return 1;
-        }
 
         display = gdk_display_get_default ();
         /* when running on X11 with a nested wayland GDK will default to wayland
@@ -241,19 +233,6 @@ main (int argc, char **argv)
                 g_printerr ("gnome-session-check-accelerated: GL Helper exited with code %d\n", estatus);
         }
 
-        /* Then, try the GLES helper */
-        if (g_spawn_sync (NULL, (char **) gles_helper_argv, NULL, 0,
-                           NULL, NULL, &gles_renderer_string, NULL, &estatus, &gles_error)) {
-                is_accelerated = (WEXITSTATUS(estatus) == HELPER_ACCEL);
-                gles_software_rendering = (WEXITSTATUS(estatus) == HELPER_SOFTWARE_RENDERING);
-                if (is_accelerated) {
-                        renderer_string = gles_renderer_string;
-                        goto finish;
-                }
-
-                g_printerr ("gnome-session-check-accelerated: GLES Helper exited with code %d\n", estatus);
-        }
-
         /* If we got here, GL software rendering is our best bet */
         if (gl_software_rendering || gles_software_rendering) {
                 is_software_rendering = TRUE;
