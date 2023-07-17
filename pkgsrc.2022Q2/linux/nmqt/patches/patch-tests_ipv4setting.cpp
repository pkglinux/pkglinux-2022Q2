$NetBSD$

--- tests/ipv4setting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/ipv4setting.cpp
@@ -98,18 +98,18 @@ void IPv4Setting::testSetting()
 
     QVariantMap map;
 
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD), method);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DNS), QVariant::fromValue(dns));
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DNS_SEARCH), dnsSearch);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES), QVariant::fromValue(addresses));
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES), QVariant::fromValue(routes));
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), method);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS), QVariant::fromValue(dns));
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH), dnsSearch);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES), QVariant::fromValue(addresses));
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES), QVariant::fromValue(routes));
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns);
     map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_CLIENT_ID), dhcpClientId);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_SEND_HOSTNAME), dhcpSendHostname);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_HOSTNAME), dhcpHostname);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_NEVER_DEFAULT), neverDefault);
-    map.insert(QLatin1String(NM_SETTING_IP4_CONFIG_MAY_FAIL), mayFail);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_SEND_HOSTNAME), dhcpSendHostname);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_HOSTNAME), dhcpHostname);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT), neverDefault);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL), mayFail);
 
     NetworkManager::Ipv4Setting setting;
     setting.fromMap(map);
@@ -119,20 +119,20 @@ void IPv4Setting::testSetting()
     // Will fail if set some default values, because they are skipped in toMap() method
     QVariantMap::const_iterator it = map.constBegin();
     while (it != map.constEnd()) {
-        if (it.key() != QLatin1String(NM_SETTING_IP4_CONFIG_DNS) &&
-                it.key() != QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES) &&
-                it.key() != QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES)) {
+        if (it.key() != QLatin1String(NM_SETTING_IP_CONFIG_DNS) &&
+                it.key() != QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES) &&
+                it.key() != QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)) {
             QCOMPARE(it.value(), map1.value(it.key()));
         }
         ++it;
     }
 
-    QCOMPARE(map.value(QLatin1String(NM_SETTING_IP4_CONFIG_DNS)).value<UIntList>(),
-             map1.value(QLatin1String(NM_SETTING_IP4_CONFIG_DNS)).value<UIntList>());
-    QCOMPARE(map.value(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES)).value<UIntListList>(),
-             map.value(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES)).value<UIntListList>());
-    QCOMPARE(map.value(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES)).value<UIntListList>(),
-             map.value(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES)).value<UIntListList>());
+    QCOMPARE(map.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<UIntList>(),
+             map1.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<UIntList>());
+    QCOMPARE(map.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<UIntListList>(),
+             map.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<UIntListList>());
+    QCOMPARE(map.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).value<UIntListList>(),
+             map.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).value<UIntListList>());
 }
 
 QTEST_MAIN(IPv4Setting)
