$NetBSD$

--- settings/vlansetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/vlansetting.cpp
@@ -146,8 +146,8 @@ QStringList NetworkManager::VlanSetting:
 
 void NetworkManager::VlanSetting::fromMap(const QVariantMap &setting)
 {
-    if (setting.contains(QLatin1String(NM_SETTING_VLAN_INTERFACE_NAME))) {
-        setInterfaceName(setting.value(QLatin1String(NM_SETTING_VLAN_INTERFACE_NAME)).toString());
+    if (setting.contains(QLatin1String(NM_SETTING_VLAN_SETTING_NAME))) {
+        setInterfaceName(setting.value(QLatin1String(NM_SETTING_VLAN_SETTING_NAME)).toString());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_VLAN_PARENT))) {
@@ -176,7 +176,7 @@ QVariantMap NetworkManager::VlanSetting:
     QVariantMap setting;
 
     if (!interfaceName().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_VLAN_INTERFACE_NAME), interfaceName());
+        setting.insert(QLatin1String(NM_SETTING_VLAN_SETTING_NAME), interfaceName());
     }
 
     if (!parent().isEmpty()) {
@@ -207,7 +207,7 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << "type: " << setting.typeAsString(setting.type()) << '\n';
     dbg.nospace() << "initialized: " << !setting.isNull() << '\n';
 
-    dbg.nospace() << NM_SETTING_VLAN_INTERFACE_NAME << ": " << setting.interfaceName() << '\n';
+    dbg.nospace() << NM_SETTING_VLAN_SETTING_NAME << ": " << setting.interfaceName() << '\n';
     dbg.nospace() << NM_SETTING_VLAN_PARENT << ": " << setting.parent() << '\n';
     dbg.nospace() << NM_SETTING_VLAN_ID << ": " << setting.id() << '\n';
     dbg.nospace() << NM_SETTING_VLAN_FLAGS << ": " << setting.flags() << '\n';
