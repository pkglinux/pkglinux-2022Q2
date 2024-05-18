$NetBSD$

--- xbmc/network/WebServer.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/WebServer.cpp
@@ -116,7 +116,7 @@ static MHD_Response* create_response(siz
 #endif
 }
 
-int CWebServer::AskForAuthentication(struct MHD_Connection *connection) const
+MHD_RESULT CWebServer::AskForAuthentication(struct MHD_Connection *connection) const
 {
   struct MHD_Response *response = create_response(0, nullptr, MHD_NO, MHD_NO);
   if (!response)
@@ -125,7 +125,7 @@ int CWebServer::AskForAuthentication(str
     return MHD_NO;
   }
 
-  int ret = AddHeader(response, MHD_HTTP_HEADER_WWW_AUTHENTICATE, "Basic realm=XBMC");
+  MHD_RESULT ret = AddHeader(response, MHD_HTTP_HEADER_WWW_AUTHENTICATE, "Basic realm=XBMC");
   ret |= AddHeader(response, MHD_HTTP_HEADER_CONNECTION, "close");
   if (!ret)
   {
@@ -146,6 +146,10 @@ int CWebServer::AskForAuthentication(str
   }
 
   ret = MHD_queue_response(connection, MHD_HTTP_UNAUTHORIZED, response);
+  // This MHD_RESULT cast is only necessary for libmicrohttpd 0.9.71
+  // The return type of MHD_queue_basic_auth_fail_response was fixed for future versions
+  // See https://git.gnunet.org/libmicrohttpd.git/commit/?id=860b42e9180da4dcd7e8690a3fcdb4e37e5772c5
+//  ret = static_cast<MHD_RESULT>(MHD_queue_basic_auth_fail_response(request.connection, "XBMC", response));
   MHD_destroy_response(response);
 
   return ret;
@@ -167,12 +171,12 @@ bool CWebServer::IsAuthenticated(struct
 }
 
 #if (MHD_VERSION >= 0x00040001)
-int CWebServer::AnswerToConnection(void *cls, struct MHD_Connection *connection,
+MHD_RESULT CWebServer::AnswerToConnection(void *cls, struct MHD_Connection *connection,
                       const char *url, const char *method,
                       const char *version, const char *upload_data,
                       size_t *upload_data_size, void **con_cls)
 #else
-int CWebServer::AnswerToConnection(void *cls, struct MHD_Connection *connection,
+MHD_RESULT CWebServer::AnswerToConnection(void *cls, struct MHD_Connection *connection,
                       const char *url, const char *method,
                       const char *version, const char *upload_data,
                       unsigned int *upload_data_size, void **con_cls)
@@ -222,7 +226,7 @@ int CWebServer::AnswerToConnection(void
   return webServer->HandlePartialRequest(connection, connectionHandler, request, upload_data, upload_data_size, con_cls);
 }
 
-int CWebServer::HandlePartialRequest(struct MHD_Connection *connection, ConnectionHandler* connectionHandler, HTTPRequest request, const char *upload_data, size_t *upload_data_size, void **con_cls)
+MHD_RESULT CWebServer::HandlePartialRequest(struct MHD_Connection *connection, ConnectionHandler* connectionHandler, HTTPRequest request, const char *upload_data, size_t *upload_data_size, void **con_cls)
 {
   std::unique_ptr<ConnectionHandler> conHandler(connectionHandler);
 
@@ -442,12 +446,12 @@ int CWebServer::HandlePartialRequest(str
 }
 
 #if (MHD_VERSION >= 0x00040001)
-int CWebServer::HandlePostField(void *cls, enum MHD_ValueKind kind, const char *key,
+MHD_RESULT CWebServer::HandlePostField(void *cls, enum MHD_ValueKind kind, const char *key,
                                 const char *filename, const char *content_type,
                                 const char *transfer_encoding, const char *data, uint64_t off,
                                 size_t size)
 #else
-int CWebServer::HandlePostField(void *cls, enum MHD_ValueKind kind, const char *key,
+MHD_RESULT CWebServer::HandlePostField(void *cls, enum MHD_ValueKind kind, const char *key,
                                 const char *filename, const char *content_type,
                                 const char *transfer_encoding, const char *data, uint64_t off,
                                 unsigned int size)
@@ -466,13 +470,13 @@ int CWebServer::HandlePostField(void *cl
   return MHD_YES;
 }
 
-int CWebServer::HandleRequest(const std::shared_ptr<IHTTPRequestHandler>& handler)
+MHD_RESULT CWebServer::HandleRequest(const std::shared_ptr<IHTTPRequestHandler>& handler)
 {
   if (handler == nullptr)
     return MHD_NO;
 
   HTTPRequest request = handler->GetRequest();
-  int ret = handler->HandleRequest();
+  MHD_RESULT ret = handler->HandleRequest();
   if (ret == MHD_NO)
   {
     CLog::Log(LOGERROR, "CWebServer[%hu]: failed to handle HTTP request for %s", m_port, request.pathUrl.c_str());
@@ -520,7 +524,7 @@ int CWebServer::HandleRequest(const std:
   return FinalizeRequest(handler, responseDetails.status, response);
 }
 
-int CWebServer::FinalizeRequest(const std::shared_ptr<IHTTPRequestHandler>& handler, int responseStatus, struct MHD_Response *response)
+MHD_RESULT CWebServer::FinalizeRequest(const std::shared_ptr<IHTTPRequestHandler>& handler, int responseStatus, struct MHD_Response *response)
 {
   if (handler == nullptr || response == nullptr)
     return MHD_NO;
@@ -602,7 +606,7 @@ int CWebServer::FinalizeRequest(const st
   return ret;
 }
 
-int CWebServer::CreateMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const
+MHD_RESULT CWebServer::CreateMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const
 {
   if (handler == nullptr)
     return MHD_NO;
@@ -660,7 +664,7 @@ int CWebServer::CreateMemoryDownloadResp
   return CreateRangedMemoryDownloadResponse(handler, response);
 }
 
-int CWebServer::CreateRangedMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const
+MHD_RESULT CWebServer::CreateRangedMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const
 {
   if (handler == nullptr)
     return MHD_NO;
@@ -740,7 +744,7 @@ int CWebServer::CreateRangedMemoryDownlo
   return CreateMemoryDownloadResponse(request.connection, result.c_str(), result.size(), false, true, response);
 }
 
-int CWebServer::CreateRedirect(struct MHD_Connection *connection, const std::string &strURL, struct MHD_Response *&response) const
+MHD_RESULT CWebServer::CreateRedirect(struct MHD_Connection *connection, const std::string &strURL, struct MHD_Response *&response) const
 {
   response = create_response(0, nullptr, MHD_NO, MHD_NO);
   if (response == nullptr)
@@ -753,7 +757,7 @@ int CWebServer::CreateRedirect(struct MH
   return MHD_YES;
 }
 
-int CWebServer::CreateFileDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const
+MHD_RESULT CWebServer::CreateFileDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const
 {
   if (handler == nullptr)
     return MHD_NO;
@@ -886,7 +890,7 @@ int CWebServer::CreateFileDownloadRespon
   return MHD_YES;
 }
 
-int CWebServer::CreateErrorResponse(struct MHD_Connection *connection, int responseType, HTTPMethod method, struct MHD_Response *&response) const
+MHD_RESULT CWebServer::CreateErrorResponse(struct MHD_Connection *connection, int responseType, HTTPMethod method, struct MHD_Response *&response) const
 {
   size_t payloadSize = 0;
   void *payload = nullptr;
@@ -917,7 +921,7 @@ int CWebServer::CreateErrorResponse(stru
   return MHD_YES;
 }
 
-int CWebServer::CreateMemoryDownloadResponse(struct MHD_Connection *connection, const void *data, size_t size, bool free, bool copy, struct MHD_Response *&response) const
+MHD_RESULT CWebServer::CreateMemoryDownloadResponse(struct MHD_Connection *connection, const void *data, size_t size, bool free, bool copy, struct MHD_Response *&response) const
 {
   response = create_response(size, const_cast<void*>(data), free ? MHD_YES : MHD_NO, copy ? MHD_YES : MHD_NO);
   if (response == nullptr)
@@ -929,7 +933,7 @@ int CWebServer::CreateMemoryDownloadResp
   return MHD_YES;
 }
 
-int CWebServer::SendErrorResponse(struct MHD_Connection *connection, int errorType, HTTPMethod method) const
+MHD_RESULT CWebServer::SendErrorResponse(struct MHD_Connection *connection, int errorType, HTTPMethod method) const
 {
   struct MHD_Response *response = nullptr;
   int ret = CreateErrorResponse(connection, errorType, method, response);
@@ -1248,10 +1252,10 @@ std::string CWebServer::CreateMimeTypeFr
   return CMime::GetMimeType(ext);
 }
 
-int CWebServer::AddHeader(struct MHD_Response *response, const std::string &name, const std::string &value) const
+MHD_RESULT CWebServer::AddHeader(struct MHD_Response *response, const std::string &name, const std::string &value) const
 {
   if (response == nullptr || name.empty())
-    return 0;
+    return MHD_NO;
 
   if (g_advancedSettings.CanLogComponent(LOGWEBSERVER))
     CLog::Log(LOGDEBUG, "CWebServer[%hu] [OUT] %s: %s", m_port, name.c_str(), value.c_str());
