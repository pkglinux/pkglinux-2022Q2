$NetBSD$

--- xbmc/network/httprequesthandler/HTTPImageTransformationHandler.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPImageTransformationHandler.cpp
@@ -116,7 +116,7 @@ bool CHTTPImageTransformationHandler::Ca
           options.find(TRANSFORMATION_OPTION_HEIGHT) != options.end());
 }
 
-int CHTTPImageTransformationHandler::HandleRequest()
+MHD_RESULT CHTTPImageTransformationHandler::HandleRequest()
 {
   if (m_response.type == HTTPError)
     return MHD_YES;
