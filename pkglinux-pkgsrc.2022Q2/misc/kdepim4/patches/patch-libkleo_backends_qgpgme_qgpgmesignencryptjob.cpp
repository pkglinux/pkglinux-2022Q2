$NetBSD$

--- libkleo/backends/qgpgme/qgpgmesignencryptjob.cpp.orig	2015-06-25 17:47:38.000000000 +0000
+++ libkleo/backends/qgpgme/qgpgmesignencryptjob.cpp
@@ -34,7 +34,7 @@
 
 #include "ui/messagebox.h"
 
-#include <qgpgme/dataprovider.h>
+#include <qgpgme4/dataprovider.h>
 
 #include <gpgme++/context.h>
 #include <gpgme++/data.h>
