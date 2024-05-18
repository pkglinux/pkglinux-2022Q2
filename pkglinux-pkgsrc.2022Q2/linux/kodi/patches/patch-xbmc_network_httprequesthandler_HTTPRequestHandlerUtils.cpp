$NetBSD$

--- xbmc/network/httprequesthandler/HTTPRequestHandlerUtils.cpp.orig	2024-05-12 19:02:37.587998949 +0000
+++ xbmc/network/httprequesthandler/HTTPRequestHandlerUtils.cpp
@@ -52,7 +52,7 @@ int HTTPRequestHandlerUtils::GetRequestH
   if (connection == nullptr)
     return -1;
 
-  return MHD_get_connection_values(connection, kind, FillArgumentMap, &headerValues);
+  return MHD_get_connection_values(connection, kind, (MHD_KeyValueIterator)FillArgumentMap, &headerValues);
 }
 
 int HTTPRequestHandlerUtils::GetRequestHeaderValues(struct MHD_Connection *connection, enum MHD_ValueKind kind, std::multimap<std::string, std::string> &headerValues)
@@ -60,7 +60,7 @@ int HTTPRequestHandlerUtils::GetRequestH
   if (connection == nullptr)
     return -1;
 
-  return MHD_get_connection_values(connection, kind, FillArgumentMultiMap, &headerValues);
+  return MHD_get_connection_values(connection, kind, (MHD_KeyValueIterator)FillArgumentMultiMap, &headerValues);
 }
 
 bool HTTPRequestHandlerUtils::GetRequestedRanges(struct MHD_Connection *connection, uint64_t totalLength, CHttpRanges &ranges)
