$NetBSD$

--- xbmc/network/httprequesthandler/HTTPWebinterfaceAddonsHandler.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPWebinterfaceAddonsHandler.cpp
@@ -29,7 +29,7 @@ bool CHTTPWebinterfaceAddonsHandler::Can
   return (request.pathUrl.compare("/addons") == 0 || request.pathUrl.compare("/addons/") == 0);
 }
 
-int CHTTPWebinterfaceAddonsHandler::HandleRequest()
+MHD_RESULT CHTTPWebinterfaceAddonsHandler::HandleRequest()
 {
   m_responseData = ADDON_HEADER;
   ADDON::VECADDONS addons;
