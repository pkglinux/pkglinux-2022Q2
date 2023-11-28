$NetBSD$

--- js/ui/windowManager.js.orig	2020-10-05 18:36:07.904838300 +0000
+++ js/ui/windowManager.js
@@ -992,8 +992,8 @@ var WindowManager = class {
 
     async _startX11Services(task, cancellable) {
         try {
-            await Shell.util_start_systemd_unit(
-                'gnome-session-x11-services-ready.target', 'fail', cancellable);
+//            await Shell.util_start_systemd_unit(
+//                'gnome-session-x11-services-ready.target', 'fail', cancellable);
         } catch (e) {
             // Ignore NOT_SUPPORTED error, which indicates we are not systemd
             // managed and gnome-session will have taken care of everything
@@ -1008,8 +1008,8 @@ var WindowManager = class {
 
     async _stopX11Services(cancellable) {
         try {
-            await Shell.util_stop_systemd_unit(
-                'gnome-session-x11-services.target', 'fail', cancellable);
+//            await Shell.util_stop_systemd_unit(
+//                'gnome-session-x11-services.target', 'fail', cancellable);
         } catch (e) {
             // Ignore NOT_SUPPORTED error, which indicates we are not systemd
             // managed and gnome-session will have taken care of everything
