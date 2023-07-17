$NetBSD$

--- libkleo/backends/qgpgme/qgpgmeadduseridjob.cpp.orig	2015-06-25 17:47:38.000000000 +0000
+++ libkleo/backends/qgpgme/qgpgmeadduseridjob.cpp
@@ -32,7 +32,7 @@
 
 #include "qgpgmeadduseridjob.h"
 
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 
 #include <gpgme++/context.h>
 #include <gpgme++/data.h>
