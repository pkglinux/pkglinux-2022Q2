$NetBSD$

--- lib/preview.cpp.orig	2020-05-05 14:48:27.000000000 +0000
+++ lib/preview.cpp
@@ -20,6 +20,9 @@
  *
  */
 
+#define emit Q_EMIT
+#define QT_NO_FOREACH
+
 #include "preview.h"
 #include "previewplugin.h"
 
