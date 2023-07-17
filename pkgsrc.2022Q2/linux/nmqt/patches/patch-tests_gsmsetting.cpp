$NetBSD$

--- tests/gsmsetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ tests/gsmsetting.cpp
@@ -76,10 +76,10 @@ void GsmSetting::testSetting()
     map.insert(QLatin1String(NM_SETTING_GSM_PASSWORD_FLAGS), passwordFlags);
     map.insert(QLatin1String(NM_SETTING_GSM_APN), apn);
     map.insert(QLatin1String(NM_SETTING_GSM_NETWORK_ID), networkId);
-    map.insert(QLatin1String(NM_SETTING_GSM_NETWORK_TYPE), networkType);
+    map.insert(QLatin1String(NM_SETTING_GSM_DEVICE_ID), networkType);
     map.insert(QLatin1String(NM_SETTING_GSM_PIN), pin);
     map.insert(QLatin1String(NM_SETTING_GSM_PIN_FLAGS), pinFlags);
-    map.insert(QLatin1String(NM_SETTING_GSM_ALLOWED_BANDS), allowedBand);
+    map.insert(QLatin1String(NM_SETTING_GSM_SIM_ID), allowedBand);
     map.insert(QLatin1String(NM_SETTING_GSM_HOME_ONLY), homeOnly);
 
     NetworkManager::GsmSetting setting;
