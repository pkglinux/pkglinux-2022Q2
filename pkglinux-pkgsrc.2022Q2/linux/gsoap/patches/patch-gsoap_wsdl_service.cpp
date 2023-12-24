$NetBSD$

--- gsoap/wsdl/service.cpp.orig	2023-09-23 14:12:29.000000000 +0000
+++ gsoap/wsdl/service.cpp
@@ -4389,9 +4389,18 @@ static void banner(const char *text1, co
     fprintf(stderr, "\n----<< %s: %s >>----\n\n", text1, text2 ? text2 : "");
 }
 
+static time_t reproducible_time()
+{
+  time_t t;
+  const char *source_date_epoch = getenv("SOURCE_DATE_EPOCH");
+  if (source_date_epoch == NULL || (t = (time_t)strtoll(source_date_epoch, NULL, 10)) <= 0)
+    t = time(NULL);
+  return t;
+}
+
 static void ident()
 {
-  time_t t = time(NULL), *p = &t;
+  time_t t = reproducible_time(), *p = &t;
   char tmp[256];
   int i;
   strftime(tmp, 256, "%Y-%m-%d %H:%M:%S GMT", gmtime(p));
