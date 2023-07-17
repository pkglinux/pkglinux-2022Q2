$NetBSD$

--- js/ui/main.js.orig	2022-08-11 15:59:46.330000000 +0000
+++ js/ui/main.js
@@ -310,12 +310,6 @@ function _initializeUI() {
         }
 
         let credentials = new Gio.Credentials();
-        if (credentials.get_unix_user() === 0) {
-            notify(_('Logged in as a privileged user'),
-                   _('Running a session as a privileged user should be avoided for security reasons. If possible, you should log in as a normal user.'));
-        } else if (sessionMode.showWelcomeDialog) {
-            _handleShowWelcomeScreen();
-        }
 
         if (sessionMode.currentMode !== 'gdm' &&
             sessionMode.currentMode !== 'initial-setup')
@@ -341,29 +335,6 @@ function _handleShowWelcomeScreen() {
 }
 
 async function _handleLockScreenWarning() {
-    const path = `${global.userdatadir}/lock-warning-shown`;
-    const file = Gio.File.new_for_path(path);
-
-    const hasLockScreen = screenShield !== null;
-    if (hasLockScreen) {
-        try {
-            await file.delete_async(0, null);
-        } catch (e) {
-            if (!e.matches(Gio.IOErrorEnum, Gio.IOErrorEnum.NOT_FOUND))
-                logError(e);
-        }
-    } else {
-        try {
-            if (!await file.touch_async())
-                return;
-        } catch (e) {
-            logError(e);
-        }
-
-        notify(
-            _('Screen Lock disabled'),
-            _('Screen Locking requires the GNOME display manager.'));
-    }
 }
 
 function _getStylesheet(name) {
