$NetBSD$

--- xbmc/network/httprequesthandler/IHTTPRequestHandler.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/httprequesthandler/IHTTPRequestHandler.h
@@ -33,6 +33,12 @@
 
 #include "utils/HttpRangeUtils.h"
 
+#if MHD_VERSION >= 0x00097002
+using MHD_RESULT = MHD_Result;
+#else
+using MHD_RESULT = MHD_Result;//int;
+#endif
+
 class CDateTime;
 class CWebServer;
 
@@ -125,7 +131,7 @@ public:
    *
    * \return MHD_NO if a severe error has occurred otherwise MHD_YES.
    */
-  virtual int HandleRequest() = 0;
+  virtual MHD_RESULT HandleRequest() = 0;
 
   /*!
    * \brief Whether the HTTP response could also be provided in ranges.
