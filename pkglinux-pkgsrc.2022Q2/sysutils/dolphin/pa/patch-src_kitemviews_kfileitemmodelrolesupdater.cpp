$NetBSD$

--- src/kitemviews/kfileitemmodelrolesupdater.cpp.orig	2021-02-24 23:11:52.000000000 +0000
+++ src/kitemviews/kfileitemmodelrolesupdater.cpp
@@ -1085,7 +1085,7 @@ QHash<QByteArray, QVariant> KFileItemMod
     const bool getIsExpandableRole = m_roles.contains("isExpandable");
 
     if ((getSizeRole || getIsExpandableRole) && item.isDir()) {
-        if (item.isLocalFile()) {
+        if (item.isLocalFile() && !item.isSlow()) {
             // Tell m_directoryContentsCounter that we want to count the items
             // inside the directory. The result will be received in slotDirectoryContentsCountReceived.
             if (m_scanDirectories) {
