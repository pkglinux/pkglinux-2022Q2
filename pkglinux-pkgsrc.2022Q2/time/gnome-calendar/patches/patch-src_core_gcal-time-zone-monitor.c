$NetBSD$

--- src/core/gcal-time-zone-monitor.c.orig	2021-03-22 18:55:09.589393600 +0000
+++ src/core/gcal-time-zone-monitor.c
@@ -71,6 +71,7 @@ on_timedate1_proxy_properties_changed_cb
   if (timezone_variant)
     timezone_identifier = g_variant_get_string (timezone_variant, NULL);
 
+  g_clear_pointer (&self->timezone, g_time_zone_unref);
   self->timezone = g_time_zone_new_identifier (timezone_identifier);
 
   g_debug ("System timezone is %s", g_time_zone_get_identifier (self->timezone));
@@ -138,6 +139,8 @@ gcal_time_zone_monitor_init (GcalTimeZon
 
   GCAL_ENTRY;
 
+  self->timezone = g_time_zone_new_local ();
+
   connection = g_bus_get_sync (G_BUS_TYPE_SYSTEM, NULL, NULL);
 
   if (!connection)
