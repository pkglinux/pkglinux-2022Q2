$NetBSD$

--- js/dbusServices/extensions/main.js.orig	2021-06-10 11:33:01.562930600 +0000
+++ js/dbusServices/extensions/main.js
@@ -10,7 +10,7 @@ const { DBusService } = imports.dbusServ
 const { ExtensionsService } = imports.extensionsService;
 
 function main() {
-    Gtk.init();
+//    Gtk.init();
     pkg.initFormat();
 
     const service = new DBusService(
