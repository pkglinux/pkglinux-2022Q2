$NetBSD$

--- tests/bridgesetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/bridgesetting.cpp
@@ -58,7 +58,7 @@ void BridgeSetting::testSetting()
 
     QVariantMap map;
 
-    map.insert(QLatin1String(NM_SETTING_BRIDGE_INTERFACE_NAME), interfaceName);
+    map.insert(QLatin1String(NM_SETTING_BRIDGE_SETTING_NAME), interfaceName);
     map.insert(QLatin1String(NM_SETTING_BRIDGE_STP), stp);
     map.insert(QLatin1String(NM_SETTING_BRIDGE_PRIORITY), priority);
     map.insert(QLatin1String(NM_SETTING_BRIDGE_FORWARD_DELAY), forwardDelay);
