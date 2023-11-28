$NetBSD$

--- settings/bondsetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/bondsetting.cpp
@@ -91,8 +91,8 @@ NMStringMap NetworkManager::BondSetting:
 
 void NetworkManager::BondSetting::fromMap(const QVariantMap &setting)
 {
-    if (setting.contains(QLatin1String(NM_SETTING_BOND_INTERFACE_NAME))) {
-        setInterfaceName(setting.value(QLatin1String(NM_SETTING_BOND_INTERFACE_NAME)).toString());
+    if (setting.contains(QLatin1String(NM_SETTING_BOND_OPTIONS))) {
+        setInterfaceName(setting.value(QLatin1String(NM_SETTING_BOND_OPTIONS)).toString());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_BOND_OPTIONS))) {
@@ -105,7 +105,7 @@ QVariantMap NetworkManager::BondSetting:
     QVariantMap setting;
 
     if (!interfaceName().isEmpty()) {
-        setting.insert(QLatin1String(NM_SETTING_BOND_INTERFACE_NAME), interfaceName());
+        setting.insert(QLatin1String(NM_SETTING_BOND_OPTIONS), interfaceName());
     }
 
     if (!options().isEmpty()) {
@@ -120,7 +120,7 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << "type: " << setting.typeAsString(setting.type()) << '\n';
     dbg.nospace() << "initialized: " << !setting.isNull() << '\n';
 
-    dbg.nospace() << NM_SETTING_BOND_INTERFACE_NAME << ": " << setting.interfaceName() << '\n';
+    dbg.nospace() << NM_SETTING_BOND_OPTIONS << ": " << setting.interfaceName() << '\n';
     dbg.nospace() << NM_SETTING_BOND_OPTIONS << ": " << setting.options() << '\n';
 
     return dbg.maybeSpace();
