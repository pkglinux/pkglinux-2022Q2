$NetBSD$

--- xbmc/network/httprequesthandler/HTTPWebinterfaceAddonsHandler.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPWebinterfaceAddonsHandler.h
@@ -32,7 +32,7 @@ public:
   virtual IHTTPRequestHandler* Create(const HTTPRequest &request) { return new CHTTPWebinterfaceAddonsHandler(request); }
   virtual bool CanHandleRequest(const HTTPRequest &request);
 
-  virtual int HandleRequest();
+  virtual MHD_RESULT HandleRequest();
 
   virtual HttpResponseRanges GetResponseData() const;
 
