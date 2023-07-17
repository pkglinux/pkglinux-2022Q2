$NetBSD$

--- lib/runnerresultsmodel.cpp.orig	2020-05-05 14:48:27.000000000 +0000
+++ lib/runnerresultsmodel.cpp
@@ -20,6 +20,8 @@
  *
  */
 
+#define emit Q_EMIT
+#define QT_NO_FOREACH
 #include "runnerresultsmodel.h"
 
 #include <QAction>
