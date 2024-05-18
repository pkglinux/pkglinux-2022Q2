$NetBSD$

--- xbmc/network/httprequesthandler/HTTPJsonRpcHandler.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPJsonRpcHandler.cpp
@@ -37,7 +37,7 @@ bool CHTTPJsonRpcHandler::CanHandleReque
   return (request.pathUrl.compare("/jsonrpc") == 0);
 }
 
-int CHTTPJsonRpcHandler::HandleRequest()
+MHD_RESULT CHTTPJsonRpcHandler::HandleRequest()
 {
   CHTTPClient client;
   bool isRequest = false;
