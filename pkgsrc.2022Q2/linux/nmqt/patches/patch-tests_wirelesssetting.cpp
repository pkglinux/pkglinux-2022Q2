$NetBSD$

--- tests/wirelesssetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/wirelesssetting.cpp
@@ -97,7 +97,7 @@ void WirelessSetting::testSetting()
     map.insert(QLatin1String(NM_SETTING_WIRELESS_MAC_ADDRESS_BLACKLIST), macAddressBlacklist);
     map.insert(QLatin1String(NM_SETTING_WIRELESS_MTU), mtu);
     map.insert(QLatin1String(NM_SETTING_WIRELESS_SEEN_BSSIDS), seenBssids);
-    map.insert(QLatin1String(NM_SETTING_WIRELESS_SEC), security);
+    map.insert(QLatin1String(NM_SETTING_WIRELESS_SECURITY_SETTING_NAME), security);
     map.insert(QLatin1String(NM_SETTING_WIRELESS_HIDDEN), hidden);
 
     NetworkManager::WirelessSetting setting;
