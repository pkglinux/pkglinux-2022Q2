$NetBSD$

--- locale/freelocale.c.orig	2020-02-01 11:52:50.000000000 +0000
+++ locale/freelocale.c
@@ -34,7 +34,7 @@ __freelocale (locale_t dataset)
   int cnt;
 
   /* This static object is returned for newlocale (LC_ALL_MASK, "C").  */
-  if (dataset == _nl_C_locobj_ptr)
+  if (dataset == _nl_C_locobj_ptr || !dataset)
     return;
 
   /* We modify global data (the usage counts).  */
