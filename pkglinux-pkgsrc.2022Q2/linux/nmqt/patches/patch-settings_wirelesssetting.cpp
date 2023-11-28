$NetBSD$

--- settings/wirelesssetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/wirelesssetting.cpp
@@ -22,6 +22,7 @@
 #include "wirelesssetting_p.h"
 
 #include <nm-setting-wireless.h>
+#include <nm-setting-wireless-security.h>
 
 #include <QtCore/QDebug>
 
@@ -331,8 +332,8 @@ void NetworkManager::WirelessSetting::fr
         setSeenBssids(setting.value(QLatin1String(NM_SETTING_WIRELESS_SEEN_BSSIDS)).toStringList());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_WIRELESS_SEC))) {
-        setSecurity(setting.value(QLatin1String(NM_SETTING_WIRELESS_SEC)).toString());
+    if (setting.contains(QLatin1String(NM_SETTING_WIRELESS_SECURITY_SETTING_NAME))) {
+        setSecurity(setting.value(QLatin1String(NM_SETTING_WIRELESS_SECURITY_SETTING_NAME)).toString());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_WIRELESS_HIDDEN))) {
@@ -401,7 +402,7 @@ QVariantMap NetworkManager::WirelessSett
     }
 
     if (!security().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_WIRELESS_SEC), security());
+        setting.insert(QLatin1String(NM_SETTING_WIRELESS_SECURITY_SETTING_NAME), security());
     }
 
     if (hidden()) {
@@ -428,7 +429,7 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << NM_SETTING_WIRELESS_MAC_ADDRESS_BLACKLIST << ": " << setting.macAddressBlacklist() << '\n';
     dbg.nospace() << NM_SETTING_WIRELESS_MTU << ": " << setting.mtu() << '\n';
     dbg.nospace() << NM_SETTING_WIRELESS_SEEN_BSSIDS << ": " << setting.seenBssids() << '\n';
-    dbg.nospace() << NM_SETTING_WIRELESS_SEC << ": " << setting.security() << '\n';
+    dbg.nospace() << NM_SETTING_WIRELESS_SECURITY_SETTING_NAME << ": " << setting.security() << '\n';
     dbg.nospace() << NM_SETTING_WIRELESS_HIDDEN << ": " << setting.hidden() << '\n';
 
     return dbg.maybeSpace();
