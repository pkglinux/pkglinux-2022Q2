$NetBSD$

--- xbmc/network/httprequesthandler/HTTPRequestHandlerUtils.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPRequestHandlerUtils.cpp
@@ -73,7 +73,7 @@ bool HTTPRequestHandlerUtils::GetRequest
   return ranges.Parse(GetRequestHeaderValue(connection, MHD_HEADER_KIND, MHD_HTTP_HEADER_RANGE), totalLength);
 }
 
-int HTTPRequestHandlerUtils::FillArgumentMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value)
+MHD_RESULT HTTPRequestHandlerUtils::FillArgumentMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value)
 {
   if (cls == nullptr || key == nullptr)
     return MHD_NO;
@@ -84,7 +84,7 @@ int HTTPRequestHandlerUtils::FillArgumen
   return MHD_YES;
 }
 
-int HTTPRequestHandlerUtils::FillArgumentMultiMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value)
+MHD_RESULT HTTPRequestHandlerUtils::FillArgumentMultiMap(void *cls, enum MHD_ValueKind kind, const char *key, const char *value)
 {
   if (cls == nullptr || key == nullptr)
     return MHD_NO;
