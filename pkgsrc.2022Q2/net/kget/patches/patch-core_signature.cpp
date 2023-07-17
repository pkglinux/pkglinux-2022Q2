$NetBSD$

--- core/signature.cpp.orig	2015-11-05 04:23:05.000000000 +0000
+++ core/signature.cpp
@@ -30,7 +30,7 @@
 #ifdef HAVE_QGPGME
 #include <gpgme++/context.h>
 #include <gpgme++/data.h>
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 
 #include <QtCore/QFile>
 #endif
