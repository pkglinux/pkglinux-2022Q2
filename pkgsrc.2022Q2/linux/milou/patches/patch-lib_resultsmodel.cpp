$NetBSD$

--- lib/resultsmodel.cpp.orig	2020-05-05 14:48:27.000000000 +0000
+++ lib/resultsmodel.cpp
@@ -20,6 +20,8 @@
  *
  */
 
+#define emit Q_EMIT
+#define QT_NO_FOREACH
 #include "resultsmodel.h"
 
 #include "runnerresultsmodel.h"
