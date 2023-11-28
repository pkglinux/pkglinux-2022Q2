$NetBSD$

--- libkleo/backends/qgpgme/qgpgmedecryptverifyjob.cpp.orig	2015-06-25 17:47:38.000000000 +0000
+++ libkleo/backends/qgpgme/qgpgmedecryptverifyjob.cpp
@@ -32,7 +32,7 @@
 
 #include "qgpgmedecryptverifyjob.h"
 
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 
 #include <gpgme++/context.h>
 #include <gpgme++/decryptionresult.h>
