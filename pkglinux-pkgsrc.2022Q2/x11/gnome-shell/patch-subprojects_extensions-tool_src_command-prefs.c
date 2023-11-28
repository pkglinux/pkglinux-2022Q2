$NetBSD$

--- subprojects/extensions-tool/src/command-prefs.c.orig	2021-06-10 11:33:01.951921700 +0000
+++ subprojects/extensions-tool/src/command-prefs.c
@@ -25,6 +25,7 @@
 #include "common.h"
 #include "config.h"
 
+#include <syslog.h>
 static gboolean
 launch_extension_prefs (const char *uuid)
 {
@@ -33,14 +34,20 @@ launch_extension_prefs (const char *uuid
   g_autoptr (GError) error = NULL;
   gboolean has_prefs;
 
+setlogmask (LOG_UPTO (LOG_NOTICE));
+openlog ("subprojects/extensions-tool/src/command-prefs.c", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
+syslog (LOG_NOTICE, "Program launch_extension_prefs by User %d", getuid ());
+syslog (LOG_NOTICE, "before proxy = get_shell_proxy (&error);");
   proxy = get_shell_proxy (&error);
   if (proxy == NULL)
     return FALSE;
 
+syslog (LOG_NOTICE, "before info = get_extension_property");
   info = get_extension_property (proxy, uuid, "hasPrefs");
   if (info == NULL)
     return FALSE;
 
+syslog (LOG_NOTICE, "before has_prefs = g_variant_get_boolean (info);");
   has_prefs = g_variant_get_boolean (info);
   if (!has_prefs)
     {
@@ -48,6 +55,11 @@ launch_extension_prefs (const char *uuid
       return FALSE;
     }
 
+/*
+                          "LaunchExtensionPrefs",
+                          g_variant_new ("(s)", uuid),
+*/
+syslog (LOG_NOTICE, "before g_dbus_proxy_call_sync (proxy,");
   g_dbus_proxy_call_sync (proxy,
                           "OpenExtensionPrefs",
                           g_variant_new ("(ssa{sv})", uuid, "", NULL),
@@ -56,6 +68,7 @@ launch_extension_prefs (const char *uuid
                           NULL,
                           &error);
 
+syslog (LOG_NOTICE, "after g_dbus_proxy_call_sync (proxy,");
   return TRUE;
 }
 
