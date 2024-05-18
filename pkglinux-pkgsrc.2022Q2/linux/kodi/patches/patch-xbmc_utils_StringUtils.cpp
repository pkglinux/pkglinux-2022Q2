$NetBSD$

--- xbmc/utils/StringUtils.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/utils/StringUtils.cpp
@@ -28,7 +28,8 @@
 //
 //------------------------------------------------------------------------
 
-#include <guid.h>
+//#include <crossguid/guid.hpp>
+#include <uuid/uuid.h>
 
 #include "StringUtils.h"
 #include "CharsetConverter.h"
@@ -1191,11 +1192,14 @@ void StringUtils::WordToDigits(std::stri
 
 std::string StringUtils::CreateUUID()
 {
-  static GuidGenerator guidGenerator;
-  auto guid = guidGenerator.newGuid();
-
-  std::stringstream strGuid; strGuid << guid;
-  return strGuid.str();
+//  return xg::newGuid().str();
+  uuid_t uuid;
+  uuid_generate(uuid);
+  // Convert the UUID to a string
+  char uuidStr[37];
+  uuid_unparse_lower(uuid, uuidStr);
+  std::string s(uuidStr);
+  return s;
 }
 
 bool StringUtils::ValidateUUID(const std::string &uuid)
