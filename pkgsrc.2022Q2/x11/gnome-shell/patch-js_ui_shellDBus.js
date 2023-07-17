$NetBSD$

--- js/ui/shellDBus.js.orig	2021-06-10 11:33:01.624929200 +0000
+++ js/ui/shellDBus.js
@@ -319,7 +319,17 @@ var GnomeShellExtensions = class {
     }
 
     OpenExtensionPrefs(uuid, parentWindow, options) {
-        Main.extensionManager.openExtensionPrefs(uuid, parentWindow, options);
+//        Main.extensionManager.openExtensionPrefs(uuid, parentWindow, options);
+        Gio.DBus.session.call(
+            'org.gnome.Shell.Extensions',
+            '/org/gnome/Shell/Extensions',
+            'org.gnome.Shell.Extensions',
+            'OpenExtensionPrefs',
+            new GLib.Variant('(ssa{sv})', [uuid, parentWindow, options]),
+            null,
+            Gio.DBusCallFlags.NONE,
+            -1,
+            null);
     }
 
     ReloadExtensionAsync(params, invocation) {
