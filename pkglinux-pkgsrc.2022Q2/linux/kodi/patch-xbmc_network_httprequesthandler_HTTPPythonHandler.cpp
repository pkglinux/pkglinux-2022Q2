$NetBSD$

--- xbmc/network/httprequesthandler/HTTPPythonHandler.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPPythonHandler.cpp
@@ -124,7 +124,7 @@ bool CHTTPPythonHandler::CanHandleReques
   return true;
 }
 
-int CHTTPPythonHandler::HandleRequest()
+MHD_RESULT CHTTPPythonHandler::HandleRequest()
 {
   if (m_response.type == HTTPError || m_response.type == HTTPRedirect)
     return MHD_YES;
