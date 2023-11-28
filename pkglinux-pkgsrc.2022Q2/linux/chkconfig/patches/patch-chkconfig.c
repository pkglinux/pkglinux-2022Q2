$NetBSD$

--- chkconfig.c.orig	2021-01-21 08:19:06.000000000 +0000
+++ chkconfig.c
@@ -13,6 +13,7 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
  */
+#define VERSION 0.01
 #include <ctype.h>
 #include <dirent.h>
 #include <errno.h>
@@ -94,7 +95,7 @@ static void readServiceError(int rc, cha
 }
 
 static void checkRoot() {
-    if (access(RUNLEVELS "/rc3.d", R_OK | W_OK) != 0) {
+    if (access(RUNLEVELS "/rc.d/rc3.d", R_OK | W_OK) != 0) {
         fprintf(stderr, _("You do not have enough privileges to perform this "
                           "operation.\n"));
         exit(1);
