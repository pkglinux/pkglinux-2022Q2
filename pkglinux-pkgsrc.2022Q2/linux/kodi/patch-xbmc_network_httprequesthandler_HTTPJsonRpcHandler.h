$NetBSD$

--- xbmc/network/httprequesthandler/HTTPJsonRpcHandler.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPJsonRpcHandler.h
@@ -35,7 +35,7 @@ public:
   virtual IHTTPRequestHandler* Create(const HTTPRequest &request) { return new CHTTPJsonRpcHandler(request); }
   virtual bool CanHandleRequest(const HTTPRequest &request);
 
-  virtual int HandleRequest();
+  virtual MHD_RESULT HandleRequest();
 
   virtual HttpResponseRanges GetResponseData() const;
 
