$NetBSD$

--- libkleo/backends/qgpgme/threadedjobmixin.cpp.orig	2015-06-25 17:47:38.000000000 +0000
+++ libkleo/backends/qgpgme/threadedjobmixin.cpp
@@ -32,7 +32,7 @@
 
 #include "threadedjobmixin.h"
 
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 
 #include <gpgme++/data.h>
 
