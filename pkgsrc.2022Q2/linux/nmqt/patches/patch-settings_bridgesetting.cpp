$NetBSD$

--- settings/bridgesetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/bridgesetting.cpp
@@ -165,8 +165,8 @@ quint32 NetworkManager::BridgeSetting::a
 
 void NetworkManager::BridgeSetting::fromMap(const QVariantMap &setting)
 {
-    if (setting.contains(QLatin1String(NM_SETTING_BRIDGE_INTERFACE_NAME))) {
-        setInterfaceName(setting.value(QLatin1String(NM_SETTING_BRIDGE_INTERFACE_NAME)).toString());
+    if (setting.contains(QLatin1String(NM_SETTING_BRIDGE_SETTING_NAME))) {
+        setInterfaceName(setting.value(QLatin1String(NM_SETTING_BRIDGE_SETTING_NAME)).toString());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_BRIDGE_STP))) {
@@ -199,7 +199,7 @@ QVariantMap NetworkManager::BridgeSettin
     QVariantMap setting;
 
     if (!interfaceName().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_BRIDGE_INTERFACE_NAME), interfaceName());
+        setting.insert(QLatin1String(NM_SETTING_BRIDGE_SETTING_NAME), interfaceName());
     }
 
     if (!stp()) {
@@ -234,7 +234,7 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << "type: " << setting.typeAsString(setting.type()) << '\n';
     dbg.nospace() << "initialized: " << !setting.isNull() << '\n';
 
-    dbg.nospace() << NM_SETTING_BRIDGE_INTERFACE_NAME << ": " << setting.interfaceName() << '\n';
+    dbg.nospace() << NM_SETTING_BRIDGE_SETTING_NAME << ": " << setting.interfaceName() << '\n';
     dbg.nospace() << NM_SETTING_BRIDGE_STP << ": " << setting.stp() << '\n';
     dbg.nospace() << NM_SETTING_BRIDGE_PRIORITY << ": " << setting.priority() << '\n';
     dbg.nospace() << NM_SETTING_BRIDGE_FORWARD_DELAY << ": " << setting.forwardDelay() << '\n';
