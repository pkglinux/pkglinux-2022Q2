$NetBSD$

--- libfs/devices.h.orig	2005-11-22 20:43:55.000000000 +0000
+++ libfs/devices.h
@@ -15,6 +15,7 @@
  *   along with this program;  if not, write to the Free Software
  *   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
  */
+#include <sys/types.h>
 #ifndef H_DEVICES
 #define H_DEVICES
 
