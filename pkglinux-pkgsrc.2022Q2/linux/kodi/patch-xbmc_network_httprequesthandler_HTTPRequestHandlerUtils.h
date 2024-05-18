$NetBSD$

--- xbmc/network/httprequesthandler/HTTPRequestHandlerUtils.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPRequestHandlerUtils.h
@@ -36,6 +36,6 @@ public:
 private:
   HTTPRequestHandlerUtils() = delete;
 
-  static int FillArgumentMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value);
-  static int FillArgumentMultiMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value);
+  static MHD_RESULT FillArgumentMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value);
+  static MHD_RESULT FillArgumentMultiMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value);
 };
