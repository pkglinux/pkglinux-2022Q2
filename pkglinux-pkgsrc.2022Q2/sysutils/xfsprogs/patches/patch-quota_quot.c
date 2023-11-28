$NetBSD$

--- quota/quot.c.orig	2005-10-07 16:51:37.000000000 +0000
+++ quota/quot.c
@@ -34,6 +34,7 @@
 #include <ctype.h>
 #include <pwd.h>
 #include <grp.h>
+#include <sys/stat.h>
 #include "init.h"
 #include "quota.h"
 
