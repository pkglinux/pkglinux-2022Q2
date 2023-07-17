$NetBSD$

--- tests/vlansetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/vlansetting.cpp
@@ -59,7 +59,7 @@ void VlanSetting::testSetting()
 
     QVariantMap map;
 
-    map.insert(QLatin1String(NM_SETTING_VLAN_INTERFACE_NAME), interfaceName);
+    map.insert(QLatin1String(NM_SETTING_VLAN_SETTING_NAME), interfaceName);
     map.insert(QLatin1String(NM_SETTING_VLAN_PARENT), parent);
     map.insert(QLatin1String(NM_SETTING_VLAN_ID), id);
     map.insert(QLatin1String(NM_SETTING_VLAN_FLAGS), flags);
