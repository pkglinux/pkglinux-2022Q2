$NetBSD$

--- src/ash/output.h.orig	2006-11-26 10:49:25.000000000 +0000
+++ src/ash/output.h
@@ -65,8 +65,8 @@ void outfmt(struct output *, const char
     __attribute__((__format__(__printf__,2,3)));
 void out1fmt(const char *, ...)
     __attribute__((__format__(__printf__,1,2)));
-void dprintf(const char *, ...)
-    __attribute__((__format__(__printf__,1,2)));
+int dprintf(int, const char *, ...)
+    __attribute__((__format__(__printf__,2,3)));
 void fmtstr(char *, size_t, const char *, ...)
     __attribute__((__format__(__printf__,3,4)));
 void doformat(struct output *, const char *, va_list);
