$NetBSD$

--- xbmc/network/httprequesthandler/HTTPFileHandler.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPFileHandler.h
@@ -30,7 +30,7 @@ class CHTTPFileHandler : public IHTTPReq
 public:
   virtual ~CHTTPFileHandler() { }
 
-  virtual int HandleRequest();
+  virtual MHD_RESULT HandleRequest();
 
   virtual bool CanHandleRanges() const { return m_canHandleRanges; }
   virtual bool CanBeCached() const { return m_canBeCached; }
