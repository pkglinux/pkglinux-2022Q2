$NetBSD$

--- xbmc/network/WebServer.h.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/network/WebServer.h
@@ -69,28 +69,28 @@ protected:
 
   virtual void LogRequest(const char* uri) const;
 
-  virtual int HandlePartialRequest(struct MHD_Connection *connection, ConnectionHandler* connectionHandler, HTTPRequest request,
+  virtual MHD_RESULT HandlePartialRequest(struct MHD_Connection *connection, ConnectionHandler* connectionHandler, HTTPRequest request,
                                    const char *upload_data, size_t *upload_data_size, void **con_cls);
-  virtual int HandleRequest(const std::shared_ptr<IHTTPRequestHandler>& handler);
-  virtual int FinalizeRequest(const std::shared_ptr<IHTTPRequestHandler>& handler, int responseStatus, struct MHD_Response *response);
+  virtual MHD_RESULT HandleRequest(const std::shared_ptr<IHTTPRequestHandler>& handler);
+  virtual MHD_RESULT FinalizeRequest(const std::shared_ptr<IHTTPRequestHandler>& handler, int responseStatus, struct MHD_Response *response);
 
 private:
   struct MHD_Daemon* StartMHD(unsigned int flags, int port);
 
-  int AskForAuthentication(struct MHD_Connection *connection) const;
+  MHD_RESULT AskForAuthentication(struct MHD_Connection *connection) const;
   bool IsAuthenticated(struct MHD_Connection *connection) const;
 
-  int CreateMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const;
-  int CreateRangedMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const;
+  MHD_RESULT CreateMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const;
+  MHD_RESULT CreateRangedMemoryDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const;
 
-  int CreateRedirect(struct MHD_Connection *connection, const std::string &strURL, struct MHD_Response *&response) const;
-  int CreateFileDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const;
-  int CreateErrorResponse(struct MHD_Connection *connection, int responseType, HTTPMethod method, struct MHD_Response *&response) const;
-  int CreateMemoryDownloadResponse(struct MHD_Connection *connection, const void *data, size_t size, bool free, bool copy, struct MHD_Response *&response) const;
+  MHD_RESULT CreateRedirect(struct MHD_Connection *connection, const std::string &strURL, struct MHD_Response *&response) const;
+  MHD_RESULT CreateFileDownloadResponse(const std::shared_ptr<IHTTPRequestHandler>& handler, struct MHD_Response *&response) const;
+  MHD_RESULT CreateErrorResponse(struct MHD_Connection *connection, int responseType, HTTPMethod method, struct MHD_Response *&response) const;
+  MHD_RESULT CreateMemoryDownloadResponse(struct MHD_Connection *connection, const void *data, size_t size, bool free, bool copy, struct MHD_Response *&response) const;
 
-  int SendErrorResponse(struct MHD_Connection *connection, int errorType, HTTPMethod method) const;
+  MHD_RESULT SendErrorResponse(struct MHD_Connection *connection, int errorType, HTTPMethod method) const;
 
-  int AddHeader(struct MHD_Response *response, const std::string &name, const std::string &value) const;
+  MHD_RESULT AddHeader(struct MHD_Response *response, const std::string &name, const std::string &value) const;
 
   static std::string CreateMimeTypeFromExtension(const char *ext);
 
@@ -107,11 +107,11 @@ private:
   static void ContentReaderFreeCallback(void *cls);
 
 #if (MHD_VERSION >= 0x00040001)
-  static int AnswerToConnection (void *cls, struct MHD_Connection *connection,
+  static MHD_RESULT AnswerToConnection (void *cls, struct MHD_Connection *connection,
                         const char *url, const char *method,
                         const char *version, const char *upload_data,
                         size_t *upload_data_size, void **con_cls);
-  static int HandlePostField(void *cls, enum MHD_ValueKind kind, const char *key,
+  static MHD_RESULT HandlePostField(void *cls, enum MHD_ValueKind kind, const char *key,
                              const char *filename, const char *content_type,
                              const char *transfer_encoding, const char *data, uint64_t off,
                              size_t size);
