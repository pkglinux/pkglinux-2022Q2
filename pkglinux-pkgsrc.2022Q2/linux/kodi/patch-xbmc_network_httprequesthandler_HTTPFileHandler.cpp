$NetBSD$

--- xbmc/network/httprequesthandler/HTTPFileHandler.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPFileHandler.cpp
@@ -40,7 +40,7 @@ CHTTPFileHandler::CHTTPFileHandler(const
     m_lastModified()
 { }
 
-int CHTTPFileHandler::HandleRequest()
+MHD_RESULT CHTTPFileHandler::HandleRequest()
 {
   return !m_url.empty() ? MHD_YES : MHD_NO;
 }
