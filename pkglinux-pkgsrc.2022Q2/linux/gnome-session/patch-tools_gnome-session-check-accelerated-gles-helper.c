$NetBSD$

--- tools/gnome-session-check-accelerated-gles-helper.c.orig	2021-04-28 08:32:22.895144500 +0000
+++ tools/gnome-session-check-accelerated-gles-helper.c
@@ -162,6 +162,7 @@ static const GOptionEntry entries[] = {
         { NULL },
 };
 
+#include <syslog.h>
 int
 main (int argc,
       char **argv)
@@ -173,6 +174,9 @@ main (int argc,
 
         setlocale (LC_ALL, "");
 
+setlogmask (LOG_UPTO (LOG_NOTICE));
+openlog ("gleslog", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
+syslog (LOG_NOTICE, "glesProgram started by User %d", getuid ());
         context = g_option_context_new (NULL);
         g_option_context_add_group (context, gtk_get_option_group (TRUE));
         g_option_context_add_main_entries (context, entries, NULL);
@@ -183,10 +187,12 @@ main (int argc,
                 goto out;
         }
 
+syslog (LOG_NOTICE, "before GDK_WINDOWING");
 #ifdef GDK_WINDOWING_X11
         renderer = get_gles_renderer ();
 #endif
 
+syslog (LOG_NOTICE, "after GDK_WINDOWING");
         if (renderer != NULL) {
                 if (print_renderer)
                         g_print ("%s", renderer);
@@ -197,5 +203,7 @@ main (int argc,
         }
 
 out:
+syslog (LOG_NOTICE, "glesout");
+closelog();
         return ret;
 }
