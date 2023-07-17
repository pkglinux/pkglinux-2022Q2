$NetBSD$

--- tests/bondsetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/bondsetting.cpp
@@ -46,7 +46,7 @@ void BondSetting::testSetting()
 
     QVariantMap map;
 
-    map.insert(QLatin1String(NM_SETTING_BOND_INTERFACE_NAME), interfaceName);
+    map.insert(QLatin1String(NM_SETTING_BOND_SETTING_NAME), interfaceName);
     map.insert(QLatin1String(NM_SETTING_BOND_OPTIONS), QVariant::fromValue<NMStringMap>(options));
 
     NetworkManager::BondSetting setting;
@@ -54,7 +54,7 @@ void BondSetting::testSetting()
 
     QVariantMap map1 = setting.toMap();
 
-    QCOMPARE(map.value(QLatin1String(NM_SETTING_BOND_INTERFACE_NAME)), map1.value(QLatin1String(NM_SETTING_BOND_INTERFACE_NAME)));
+    QCOMPARE(map.value(QLatin1String(NM_SETTING_BOND_SETTING_NAME)), map1.value(QLatin1String(NM_SETTING_BOND_SETTING_NAME)));
 
     NMStringMap stringMap1 = map.value(QLatin1String(NM_SETTING_BOND_OPTIONS)).value<NMStringMap>();
     NMStringMap stringMap2 = map1.value(QLatin1String(NM_SETTING_BOND_OPTIONS)).value<NMStringMap>();
