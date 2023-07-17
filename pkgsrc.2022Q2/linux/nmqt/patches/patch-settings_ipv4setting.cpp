$NetBSD$

--- settings/ipv4setting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/ipv4setting.cpp
@@ -244,8 +244,8 @@ bool NetworkManager::Ipv4Setting::mayFai
 
 void NetworkManager::Ipv4Setting::fromMap(const QVariantMap &setting)
 {
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD))) {
-        const QString methodType = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD)).toString();
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_METHOD))) {
+        const QString methodType = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_METHOD)).toString();
 
         if (methodType.toLower() == QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_AUTO)) {
             setMethod(Automatic);
@@ -262,14 +262,14 @@ void NetworkManager::Ipv4Setting::fromMa
         }
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_DNS))) {
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_DNS))) {
         QList<QHostAddress> dbusDns;
         QList<uint> temp;
-        if (setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DNS)).canConvert<QDBusArgument>()) {
-            QDBusArgument dnsArg = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DNS)).value<QDBusArgument>();
+        if (setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).canConvert<QDBusArgument>()) {
+            QDBusArgument dnsArg = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<QDBusArgument>();
             temp = qdbus_cast<QList<uint> >(dnsArg);
         } else {
-            temp = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DNS)).value<QList<uint> >();
+            temp = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<QList<uint> >();
         }
 
         foreach (const uint utmp, temp) {
@@ -280,18 +280,18 @@ void NetworkManager::Ipv4Setting::fromMa
         setDns(dbusDns);
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_DNS_SEARCH))) {
-        setDnsSearch(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DNS_SEARCH)).toStringList());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH))) {
+        setDnsSearch(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH)).toStringList());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES))) {
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES))) {
         QList<NetworkManager::IpAddress> addresses;
         QList<QList<uint> > temp;
-        if (setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES)).canConvert< QDBusArgument>()) {
-            QDBusArgument addressArg = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES)).value<QDBusArgument>();
+        if (setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).canConvert< QDBusArgument>()) {
+            QDBusArgument addressArg = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<QDBusArgument>();
             temp = qdbus_cast<QList<QList<uint> > >(addressArg);
         } else {
-            temp = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES)).value<QList<QList<uint> > >();
+            temp = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<QList<QList<uint> > >();
         }
 
         foreach (const QList<uint> &uintList, temp) {
@@ -313,14 +313,14 @@ void NetworkManager::Ipv4Setting::fromMa
         setAddresses(addresses);
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES))) {
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES))) {
         QList<NetworkManager::IpRoute> routes;
         QList<QList<uint> > temp;
-        if (setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES)).canConvert< QDBusArgument>()) {
-            QDBusArgument routeArg = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES)).value<QDBusArgument>();
+        if (setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).canConvert< QDBusArgument>()) {
+            QDBusArgument routeArg = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).value<QDBusArgument>();
             temp = qdbus_cast<QList<QList<uint> > >(routeArg);
         } else {
-            temp = setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES)).value<QList<QList<uint> > >();
+            temp = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).value<QList<QList<uint> > >();
         }
 
         foreach (const QList<uint> &uintList, temp) {
@@ -344,32 +344,32 @@ void NetworkManager::Ipv4Setting::fromMa
         }
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_ROUTES))) {
-        setIgnoreAutoRoutes(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_ROUTES)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES))) {
+        setIgnoreAutoRoutes(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES)).toBool());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_DNS))) {
-        setIgnoreAutoDns(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_DNS)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS))) {
+        setIgnoreAutoDns(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS)).toBool());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_CLIENT_ID))) {
         setDhcpClientId(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_CLIENT_ID)).toString());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_SEND_HOSTNAME))) {
-        setDhcpSendHostname(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_SEND_HOSTNAME)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_SEND_HOSTNAME))) {
+        setDhcpSendHostname(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_SEND_HOSTNAME)).toBool());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_HOSTNAME))) {
-        setDhcpHostname(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_HOSTNAME)).toString());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_HOSTNAME))) {
+        setDhcpHostname(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_HOSTNAME)).toString());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_NEVER_DEFAULT))) {
-        setNeverDefault(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_NEVER_DEFAULT)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT))) {
+        setNeverDefault(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT)).toBool());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP4_CONFIG_MAY_FAIL))) {
-        setMayFail(setting.value(QLatin1String(NM_SETTING_IP4_CONFIG_MAY_FAIL)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL))) {
+        setMayFail(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL)).toBool());
     }
 }
 
@@ -378,15 +378,15 @@ QVariantMap NetworkManager::Ipv4Setting:
     QVariantMap setting;
 
     if (method() == Automatic) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_AUTO));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_AUTO));
     } else if (method() == LinkLocal) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_LINK_LOCAL));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_LINK_LOCAL));
     } else if (method() == Manual) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_MANUAL));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_MANUAL));
     } else if (method() == Shared) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_SHARED));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_SHARED));
     } else if (method() == Disabled) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_DISABLED));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP4_CONFIG_METHOD_DISABLED));
     }
 
     if (!dns().isEmpty()) {
@@ -395,11 +395,11 @@ QVariantMap NetworkManager::Ipv4Setting:
             dbusDns << htonl(dns.toIPv4Address());
         }
 
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DNS), QVariant::fromValue(dbusDns));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS), QVariant::fromValue(dbusDns));
     }
 
     if (!dnsSearch().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DNS_SEARCH), dnsSearch());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH), dnsSearch());
     }
 
     if (!addresses().isEmpty()) {
@@ -412,7 +412,7 @@ QVariantMap NetworkManager::Ipv4Setting:
             dbusAddresses << dbusAddress;
         }
 
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_ADDRESSES), QVariant::fromValue(dbusAddresses));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES), QVariant::fromValue(dbusAddresses));
     }
 
     if (!routes().isEmpty()) {
@@ -426,15 +426,15 @@ QVariantMap NetworkManager::Ipv4Setting:
             dbusRoutes << dbusRoute;
         }
 
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_ROUTES), QVariant::fromValue(dbusRoutes));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES), QVariant::fromValue(dbusRoutes));
     }
 
     if (ignoreAutoRoutes()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes());
     }
 
     if (ignoreAutoDns()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns());
     }
 
     if (!dhcpClientId().isEmpty()) {
@@ -442,19 +442,19 @@ QVariantMap NetworkManager::Ipv4Setting:
     }
 
     if (!dhcpSendHostname()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_SEND_HOSTNAME), dhcpSendHostname());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_SEND_HOSTNAME), dhcpSendHostname());
     }
 
     if (!dhcpHostname().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_DHCP_HOSTNAME), dhcpHostname());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_DHCP_HOSTNAME), dhcpHostname());
     }
 
     if (neverDefault()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_NEVER_DEFAULT), neverDefault());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT), neverDefault());
     }
 
     if (!mayFail()) {
-        setting.insert(QLatin1String(NM_SETTING_IP4_CONFIG_MAY_FAIL), mayFail());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL), mayFail());
     }
 
     return setting;
@@ -465,27 +465,27 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << "type: " << setting.typeAsString(setting.type()) << '\n';
     dbg.nospace() << "initialized: " << !setting.isNull() << '\n';
 
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_METHOD << ": " << setting.method() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_DNS << ":\n";
+    dbg.nospace() << NM_SETTING_IP_CONFIG_METHOD << ": " << setting.method() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_DNS << ":\n";
     foreach (const QHostAddress &address, setting.dns()) {
         dbg.nospace() << address.toString() << '\n';
     }
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_DNS_SEARCH << ": " << setting.dnsSearch() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_ADDRESSES << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_DNS_SEARCH << ": " << setting.dnsSearch() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_ADDRESSES << '\n';
     foreach (const NetworkManager::IpAddress &address, setting.addresses()) {
         dbg.nospace() << address.ip() << ": " << address.gateway() << ": " << address.netmask() << '\n';
     }
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_ROUTES << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_ROUTES << '\n';
     foreach (const NetworkManager::IpRoute &route, setting.routes()) {
         dbg.nospace() << route.ip() << ": " << route.netmask() << ": " << route.nextHop() << ": " << route.metric() << '\n';
     }
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_IGNORE_AUTO_ROUTES << ": " << setting.ignoreAutoRoutes() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_IGNORE_AUTO_DNS << ": " << setting.ignoreAutoDns() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES << ": " << setting.ignoreAutoRoutes() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS << ": " << setting.ignoreAutoDns() << '\n';
     dbg.nospace() << NM_SETTING_IP4_CONFIG_DHCP_CLIENT_ID << ": " << setting.dhcpClientId() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_DHCP_SEND_HOSTNAME << ": " << setting.dhcpSendHostname() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_DHCP_HOSTNAME << ": " << setting.dhcpHostname() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_NEVER_DEFAULT << ": " << setting.neverDefault() << '\n';
-    dbg.nospace() << NM_SETTING_IP4_CONFIG_MAY_FAIL << ": " << setting.mayFail() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_DHCP_SEND_HOSTNAME << ": " << setting.dhcpSendHostname() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_DHCP_HOSTNAME << ": " << setting.dhcpHostname() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_NEVER_DEFAULT << ": " << setting.neverDefault() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_MAY_FAIL << ": " << setting.mayFail() << '\n';
 
     return dbg.maybeSpace();
 }
