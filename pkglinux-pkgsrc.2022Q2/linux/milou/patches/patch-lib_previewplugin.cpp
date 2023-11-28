$NetBSD$

--- lib/previewplugin.cpp.orig	2020-05-05 14:48:27.000000000 +0000
+++ lib/previewplugin.cpp
@@ -20,6 +20,7 @@
  *
  */
 
+#define QT_NO_FOREACH
 #include "previewplugin.h"
 
 #include <QTextDocument>
