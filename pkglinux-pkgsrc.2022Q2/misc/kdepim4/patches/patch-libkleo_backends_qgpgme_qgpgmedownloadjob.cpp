$NetBSD$

--- libkleo/backends/qgpgme/qgpgmedownloadjob.cpp.orig	2015-06-25 17:47:38.000000000 +0000
+++ libkleo/backends/qgpgme/qgpgmedownloadjob.cpp
@@ -32,7 +32,7 @@
 
 #include "qgpgmedownloadjob.h"
 
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 
 #include <gpgme++/context.h>
 #include <gpgme++/data.h>
