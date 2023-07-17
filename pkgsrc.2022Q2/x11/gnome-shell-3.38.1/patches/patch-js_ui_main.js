$NetBSD$

--- js/ui/main.js.orig	2020-10-05 18:36:07.896838700 +0000
+++ js/ui/main.js
@@ -289,12 +289,6 @@ function _initializeUI() {
             });
         }
 
-        let credentials = new Gio.Credentials();
-        if (credentials.get_unix_user() === 0) {
-            notify(_('Logged in as a privileged user'),
-                   _('Running a session as a privileged user should be avoided for security reasons. If possible, you should log in as a normal user.'));
-        }
-
         if (sessionMode.currentMode !== 'gdm' &&
             sessionMode.currentMode !== 'initial-setup')
             _handleLockScreenWarning();
@@ -313,7 +307,7 @@ function _initializeUI() {
 async function _handleLockScreenWarning() {
     const path = '%s/lock-warning-shown'.format(global.userdatadir);
     const file = Gio.File.new_for_path(path);
-
+return;
     const hasLockScreen = screenShield !== null;
     if (hasLockScreen) {
         try {
