$NetBSD$

--- lib/draghelper.cpp.orig	2020-05-05 14:48:27.000000000 +0000
+++ lib/draghelper.cpp
@@ -17,6 +17,8 @@
  *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA .        *
  ***************************************************************************/
 
+#define emit Q_EMIT
+#define QT_NO_FOREACH
 #include "draghelper.h"
 
 #include <QApplication>
