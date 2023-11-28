$NetBSD$

--- lib/sourcesmodel.cpp.orig	2020-05-05 14:48:27.000000000 +0000
+++ lib/sourcesmodel.cpp
@@ -20,6 +20,9 @@
  *
  */
 
+#define emit Q_EMIT
+#define QT_NO_FOREACH
+#include <algorithm>
 #include "sourcesmodel.h"
 
 #include <KConfig>
