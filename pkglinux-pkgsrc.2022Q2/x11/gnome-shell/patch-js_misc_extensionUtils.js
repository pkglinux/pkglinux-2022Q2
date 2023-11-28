$NetBSD$

--- js/misc/extensionUtils.js.orig	2021-06-10 11:33:01.567930500 +0000
+++ js/misc/extensionUtils.js
@@ -165,6 +165,8 @@ function openPrefs() {
 
     try {
         const extensionManager = imports.ui.main.extensionManager;
+//        imports.misc.config.PACKAGE_VERSION = Config.PACKAGE_VERSION;
+        imports.misc.config.PACKAGE_VERSION = '3.38.1';
         extensionManager.openExtensionPrefs(extension.uuid, '', {});
     } catch (e) {
         if (e.name === 'ImportError')
