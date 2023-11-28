$NetBSD$

--- gnome-session/main.c.orig	2021-04-28 08:32:22.879144200 +0000
+++ gnome-session/main.c
@@ -244,7 +244,7 @@ check_gl (GError **error)
                 return FALSE;
         }
 
-        return g_spawn_check_exit_status (status, error);
+        return !g_spawn_check_exit_status (status, error);
 }
 
 static void
