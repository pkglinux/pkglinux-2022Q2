$NetBSD$

--- xbmc/network/httprequesthandler/HTTPImageTransformationHandler.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPImageTransformationHandler.h
@@ -34,7 +34,7 @@ public:
   virtual IHTTPRequestHandler* Create(const HTTPRequest &request) { return new CHTTPImageTransformationHandler(request); }
   virtual bool CanHandleRequest(const HTTPRequest &request);
 
-  virtual int HandleRequest();
+  virtual MHD_RESULT HandleRequest();
 
   virtual bool CanHandleRanges() const { return true; }
   virtual bool CanBeCached() const { return true; }
