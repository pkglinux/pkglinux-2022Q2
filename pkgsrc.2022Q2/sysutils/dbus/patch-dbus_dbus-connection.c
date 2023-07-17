$NetBSD$

--- dbus/dbus-connection.c.orig	2022-02-23 14:39:11.000000000 +0000
+++ dbus/dbus-connection.c
@@ -848,7 +848,12 @@ protected_change_timeout (DBusConnection
       return retval;
     }
   else
-    return FALSE;
+    {
+      CONNECTION_UNLOCK (connection);
+      usleep(1000);
+      CONNECTION_LOCK (connection);
+      return FALSE;
+    }
 }
 
 /**
