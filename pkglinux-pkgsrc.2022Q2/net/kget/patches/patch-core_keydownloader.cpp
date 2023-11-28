$NetBSD$

--- core/keydownloader.cpp.orig	2015-11-05 04:23:05.000000000 +0000
+++ core/keydownloader.cpp
@@ -30,7 +30,7 @@
 #include <gpgme++/context.h>
 #include <gpgme++/data.h>
 #include <gpgme++/importresult.h>
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 #endif
 
 KeyDownloader::KeyDownloader(QObject *parent)
