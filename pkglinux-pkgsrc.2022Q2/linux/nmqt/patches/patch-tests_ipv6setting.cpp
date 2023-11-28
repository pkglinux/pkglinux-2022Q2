$NetBSD$

--- tests/ipv6setting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/ipv6setting.cpp
@@ -97,15 +97,15 @@ void IPv6Setting::testSetting()
 
     QVariantMap map;
 
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD), method);
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_DNS), QVariant::fromValue(dns));
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_DNS_SEARCH), dnsSearch);
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES), QVariant::fromValue(addresses));
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES), QVariant::fromValue(routes));
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes);
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns);
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_NEVER_DEFAULT), neverDefault);
-    map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_MAY_FAIL), mayFail);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), method);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS), QVariant::fromValue(dns));
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH), dnsSearch);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES), QVariant::fromValue(addresses));
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES), QVariant::fromValue(routes));
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT), neverDefault);
+    map.insert(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL), mayFail);
     map.insert(QLatin1String(NM_SETTING_IP6_CONFIG_IP6_PRIVACY), privacy);
 
     NetworkManager::Ipv6Setting setting;
@@ -116,16 +116,16 @@ void IPv6Setting::testSetting()
     // Will fail if set some default values, because they are skipped in toMap() method
     QVariantMap::const_iterator it = map.constBegin();
     while (it != map.constEnd()) {
-        if (it.key() != QLatin1String(NM_SETTING_IP6_CONFIG_DNS) &&
-                it.key() != QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES) &&
-                it.key() != QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES)) {
+        if (it.key() != QLatin1String(NM_SETTING_IP_CONFIG_DNS) &&
+                it.key() != QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES) &&
+                it.key() != QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)) {
             QCOMPARE(it.value(), map1.value(it.key()));
         }
         ++it;
     }
 
-    IpV6DBusNameservers nameServers1 = map.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS)).value<IpV6DBusNameservers>();
-    IpV6DBusNameservers nameServers2 = map1.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS)).value<IpV6DBusNameservers>();
+    IpV6DBusNameservers nameServers1 = map.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<IpV6DBusNameservers>();
+    IpV6DBusNameservers nameServers2 = map1.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<IpV6DBusNameservers>();
 
     for (int i = 0; i < nameServers1.size(); i++) {
         QHostAddress dnsAddr1 = Utils::ipv6AddressAsHostAddress(nameServers1.at(i));
@@ -135,8 +135,8 @@ void IPv6Setting::testSetting()
         QCOMPARE(dnsAddr1, dnsAddr2);
     }
 
-    IpV6DBusAddressList addresses1 = map.value(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES)).value<IpV6DBusAddressList>();
-    IpV6DBusAddressList addresses2 = map1.value(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES)).value<IpV6DBusAddressList>();
+    IpV6DBusAddressList addresses1 = map.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<IpV6DBusAddressList>();
+    IpV6DBusAddressList addresses2 = map1.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<IpV6DBusAddressList>();
 
     for (int i = 0; i < addresses1.size(); i++) {
         QHostAddress addr1(QString(addresses1.at(i).address));
@@ -149,8 +149,8 @@ void IPv6Setting::testSetting()
         QCOMPARE(gateway1, gateway2);
     }
 
-    IpV6DBusRouteList routes1 = map.value(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES)).value<IpV6DBusRouteList>();
-    IpV6DBusRouteList routes2 = map1.value(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES)).value<IpV6DBusRouteList>();
+    IpV6DBusRouteList routes1 = map.value(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES)).value<IpV6DBusRouteList>();
+    IpV6DBusRouteList routes2 = map1.value(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES)).value<IpV6DBusRouteList>();
 
     for (int i = 0; i < routes1.size(); i++) {
         QHostAddress destination1(QString(routes1.at(i).destination));
