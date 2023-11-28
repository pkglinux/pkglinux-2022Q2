$NetBSD$

--- js/dbusServices/extensions/extensionsService.js.orig	2021-06-10 11:33:01.562930600 +0000
+++ js/dbusServices/extensions/extensionsService.js
@@ -120,7 +120,8 @@ var ExtensionsService = class extends Se
             const extension = ExtensionUtils.deserializeExtension(serialized);
 
             const window = new ExtensionPrefsDialog(extension);
-            window.connect('realize', () => {
+//            window.connect('realize', () => {
+            window.realize();
                 let externalWindow = null;
 
                 if (parentWindow)
@@ -128,7 +129,7 @@ var ExtensionsService = class extends Se
 
                 if (externalWindow)
                     externalWindow.set_parent_of(window.get_surface());
-            });
+//            });
 
             if (options.modal)
                 window.modal = options.modal.get_boolean();
