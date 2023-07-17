$NetBSD$

--- hw/xfree86/common/xf86Opt.h.orig	2021-12-15 19:01:24.000000000 +0000
+++ hw/xfree86/common/xf86Opt.h
@@ -41,7 +41,7 @@ typedef union {
     unsigned long num;
     const char *str;
     double realnum;
-    Bool bool;
+    Bool boolean;
     OptFrequency freq;
 } ValueUnion;
 
