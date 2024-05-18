$NetBSD$

--- xbmc/filesystem/DAVDirectory.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/filesystem/DAVDirectory.cpp
@@ -83,7 +83,7 @@ void CDAVDirectory::ParseResponse(const
               else
               if (CDAVCommon::ValueWithoutNamespace(pPropChild, "displayname") && !pPropChild->NoChildren())
               {
-                item.SetLabel(pPropChild->FirstChild()->ValueStr());
+		item.SetLabel(CURL::Decode(pPropChild->FirstChild()->ValueStr()));
               }
               else
               if (!item.m_dateTime.IsValid() && CDAVCommon::ValueWithoutNamespace(pPropChild, "creationdate") && !pPropChild->NoChildren())
