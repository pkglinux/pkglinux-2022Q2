$NetBSD$

--- js/ui/endSessionDialog.js.orig	2022-08-11 15:59:46.330000000 +0000
+++ js/ui/endSessionDialog.js
@@ -234,10 +234,6 @@ class EndSessionDialog extends ModalDial
         });
 
         this._loginManager = LoginManager.getLoginManager();
-        this._loginManager.canRebootToBootLoaderMenu(
-            (canRebootToBootLoaderMenu, unusedNeedsAuth) => {
-                this._canRebootToBootLoaderMenu = canRebootToBootLoaderMenu;
-            });
 
         this._userManager = AccountsService.UserManager.get_default();
         this._user = this._userManager.get_user(GLib.get_user_name());
@@ -453,23 +449,6 @@ class EndSessionDialog extends ModalDial
                 label,
             });
 
-            // Add Alt "Boot Options" option to the Reboot button
-            if (this._canRebootToBootLoaderMenu && signal === 'ConfirmedReboot') {
-                this._rebootButton = button;
-                this._rebootButtonAlt = this.addButton({
-                    action: () => {
-                        this.close(true);
-                        let signalId = this.connect('closed', () => {
-                            this.disconnect(signalId);
-                            this._confirmRebootToBootLoaderMenu();
-                        });
-                    },
-                    label: C_('button', 'Boot Options'),
-                });
-                this._rebootButtonAlt.visible = false;
-                this._capturedEventId = this.connect('captured-event',
-                    this._onCapturedEvent.bind(this));
-            }
         }
     }
 
