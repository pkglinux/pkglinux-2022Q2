$NetBSD$

--- src/helper/backend/PasswdBackend.cpp.orig	2020-11-02 10:03:22.000000000 +0000
+++ src/helper/backend/PasswdBackend.cpp
@@ -80,13 +80,14 @@ namespace SDDM {
         struct spwd *spw = getspnam(pw->pw_name);
         if (!spw) {
             qWarning() << "[Passwd] Could get passwd but not shadow";
-            return false;
+//            return false;
         }
-
+else {
         if(!spw->sp_pwdp || !spw->sp_pwdp[0])
             return true;
 
         system_passwd = spw->sp_pwdp;
+}
 #endif
 
         const char * const crypted = crypt(qPrintable(password), system_passwd);
