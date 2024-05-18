$NetBSD$

--- xbmc/network/httprequesthandler/HTTPPythonHandler.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/HTTPPythonHandler.h
@@ -36,7 +36,7 @@ public:
   virtual bool CanBeCached() const { return false; }
   virtual bool GetLastModifiedDate(CDateTime &lastModified) const;
 
-  virtual int HandleRequest();
+  virtual MHD_RESULT HandleRequest();
 
   virtual HttpResponseRanges GetResponseData() const { return m_responseRanges; }
 
