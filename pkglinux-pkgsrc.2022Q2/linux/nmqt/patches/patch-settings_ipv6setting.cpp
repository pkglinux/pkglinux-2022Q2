$NetBSD$

--- settings/ipv6setting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/ipv6setting.cpp
@@ -213,8 +213,8 @@ NetworkManager::Ipv6Setting::IPv6Privacy
 
 void NetworkManager::Ipv6Setting::fromMap(const QVariantMap &setting)
 {
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD))) {
-        const QString methodType = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD)).toString();
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_METHOD))) {
+        const QString methodType = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_METHOD)).toString();
 
         if (methodType.toLower() == QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_AUTO)) {
             setMethod(Automatic);
@@ -231,14 +231,14 @@ void NetworkManager::Ipv6Setting::fromMa
         }
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_DNS))) {
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_DNS))) {
         QList<QHostAddress> dbusDns;
         QList<QByteArray> temp;
-        if (setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS)).canConvert<QDBusArgument>()) {
-            QDBusArgument dnsArg = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS)).value< QDBusArgument>();
+        if (setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).canConvert<QDBusArgument>()) {
+            QDBusArgument dnsArg = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value< QDBusArgument>();
             temp = qdbus_cast<QList<QByteArray> >(dnsArg);
         } else {
-            temp = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS)).value<QList<QByteArray> >();
+            temp = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).value<QList<QByteArray> >();
         }
 
         foreach (const QByteArray &utmp, temp) {
@@ -248,17 +248,17 @@ void NetworkManager::Ipv6Setting::fromMa
         setDns(dbusDns);
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_DNS_SEARCH))) {
-        setDnsSearch(setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS_SEARCH)).toStringList());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH))) {
+        setDnsSearch(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH)).toStringList());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES))) {
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES))) {
         QList<IpV6DBusAddress> temp;
-        if (setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_DNS)).canConvert<QDBusArgument>()) {
-            QDBusArgument addressArg = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES)).value< QDBusArgument>();
+        if (setting.value(QLatin1String(NM_SETTING_IP_CONFIG_DNS)).canConvert<QDBusArgument>()) {
+            QDBusArgument addressArg = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value< QDBusArgument>();
             temp = qdbus_cast<QList<IpV6DBusAddress> >(addressArg);
         } else {
-            temp = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES)).value<QList<IpV6DBusAddress> >();
+            temp = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES)).value<QList<IpV6DBusAddress> >();
         }
         QList<NetworkManager::IpAddress> addresses;
 
@@ -281,13 +281,13 @@ void NetworkManager::Ipv6Setting::fromMa
         setAddresses(addresses);
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES))) {
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES))) {
         QList<IpV6DBusRoute> temp;
-        if (setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES)).canConvert<QDBusArgument>()) {
-            QDBusArgument routeArg = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES)).value< QDBusArgument>();
+        if (setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).canConvert<QDBusArgument>()) {
+            QDBusArgument routeArg = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).value< QDBusArgument>();
             temp = qdbus_cast<QList<IpV6DBusRoute> >(routeArg);
         } else {
-            temp = setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES)).value<QList<IpV6DBusRoute> >();
+            temp = setting.value(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES)).value<QList<IpV6DBusRoute> >();
         }
         QList<NetworkManager::IpRoute> routes;
 
@@ -310,20 +310,20 @@ void NetworkManager::Ipv6Setting::fromMa
         setRoutes(routes);
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES))) {
-        setIgnoreAutoRoutes(setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES))) {
+        setIgnoreAutoRoutes(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES)).toBool());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_DNS))) {
-        setIgnoreAutoDns(setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_DNS)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS))) {
+        setIgnoreAutoDns(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS)).toBool());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_NEVER_DEFAULT))) {
-        setNeverDefault(setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_NEVER_DEFAULT)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT))) {
+        setNeverDefault(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT)).toBool());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_MAY_FAIL))) {
-        setMayFail(setting.value(QLatin1String(NM_SETTING_IP6_CONFIG_MAY_FAIL)).toBool());
+    if (setting.contains(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL))) {
+        setMayFail(setting.value(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL)).toBool());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_IP6_CONFIG_IP6_PRIVACY))) {
@@ -336,15 +336,15 @@ QVariantMap NetworkManager::Ipv6Setting:
     QVariantMap setting;
 
     if (method() == Automatic) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_AUTO));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_AUTO));
     } else if (method() == Dhcp) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_DHCP));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_DHCP));
     } else if (method() == LinkLocal) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_LINK_LOCAL));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_LINK_LOCAL));
     } else if (method() == Manual) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_MANUAL));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_MANUAL));
     } else if (method() == Ignored) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_IGNORE));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_METHOD), QLatin1String(NM_SETTING_IP6_CONFIG_METHOD_IGNORE));
     }
 
     if (!dns().isEmpty()) {
@@ -352,11 +352,11 @@ QVariantMap NetworkManager::Ipv6Setting:
         foreach (const QHostAddress &dns, dns()) {
             dbusDns << Utils::ipv6AddressFromHostAddress(dns);
         }
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_DNS), QVariant::fromValue(dbusDns));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS), QVariant::fromValue(dbusDns));
     }
 
     if (!dnsSearch().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_DNS_SEARCH), dnsSearch());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_DNS_SEARCH), dnsSearch());
     }
 
     if (!addresses().isEmpty()) {
@@ -369,7 +369,7 @@ QVariantMap NetworkManager::Ipv6Setting:
             dbusAddresses << dbusAddress;
         }
 
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_ADDRESSES), QVariant::fromValue(dbusAddresses));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_ADDRESSES), QVariant::fromValue(dbusAddresses));
     }
 
     if (!routes().isEmpty()) {
@@ -383,23 +383,23 @@ QVariantMap NetworkManager::Ipv6Setting:
             dbusRoutes << dbusRoute;
         }
 
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_ROUTES), QVariant::fromValue(dbusRoutes));
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_ROUTES), QVariant::fromValue(dbusRoutes));
     }
 
     if (ignoreAutoRoutes()) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES), ignoreAutoRoutes());
     }
 
     if (ignoreAutoDns()) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS), ignoreAutoDns());
     }
 
     if (neverDefault()) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_NEVER_DEFAULT), neverDefault());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_NEVER_DEFAULT), neverDefault());
     }
 
     if (!mayFail()) {
-        setting.insert(QLatin1String(NM_SETTING_IP6_CONFIG_MAY_FAIL), mayFail());
+        setting.insert(QLatin1String(NM_SETTING_IP_CONFIG_MAY_FAIL), mayFail());
     }
 
     if (privacy() != Unknown) {
@@ -414,24 +414,24 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << "type: " << setting.typeAsString(setting.type()) << '\n';
     dbg.nospace() << "initialized: " << !setting.isNull() << '\n';
 
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_METHOD << ": " << setting.method() << '\n';
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_DNS << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_METHOD << ": " << setting.method() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_DNS << '\n';
     foreach (const QHostAddress &address, setting.dns()) {
         dbg.nospace() << address.toString() << '\n';
     }
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_DNS_SEARCH << ": " << setting.dnsSearch() << '\n';
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_ADDRESSES << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_DNS_SEARCH << ": " << setting.dnsSearch() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_ADDRESSES << '\n';
     foreach (const NetworkManager::IpAddress &address, setting.addresses()) {
         dbg.nospace() << address.ip().toString() << ": " << address.gateway().toString() << ": " << address.netmask() << '\n';
     }
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_ROUTES << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_ROUTES << '\n';
     foreach (const NetworkManager::IpRoute &route, setting.routes()) {
         dbg.nospace() << route.ip().toString() << ": " << route.metric() << ": " << route.nextHop().toString() << ": " << route.metric() << '\n';
     }
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_IGNORE_AUTO_ROUTES << ": " << setting.ignoreAutoRoutes() << '\n';
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_IGNORE_AUTO_DNS << ": " << setting.ignoreAutoDns() << '\n';
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_NEVER_DEFAULT << ": " << setting.neverDefault() << '\n';
-    dbg.nospace() << NM_SETTING_IP6_CONFIG_MAY_FAIL << ": " << setting.mayFail() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_IGNORE_AUTO_ROUTES << ": " << setting.ignoreAutoRoutes() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_IGNORE_AUTO_DNS << ": " << setting.ignoreAutoDns() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_NEVER_DEFAULT << ": " << setting.neverDefault() << '\n';
+    dbg.nospace() << NM_SETTING_IP_CONFIG_MAY_FAIL << ": " << setting.mayFail() << '\n';
     dbg.nospace() << NM_SETTING_IP6_CONFIG_IP6_PRIVACY << ": " << setting.privacy() << '\n';
 
     return dbg.maybeSpace();
