$NetBSD$

--- settings/gsmsetting.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ settings/gsmsetting.cpp
@@ -290,8 +290,8 @@ void NetworkManager::GsmSetting::fromMap
         setNetworkId(setting.value(QLatin1String(NM_SETTING_GSM_NETWORK_ID)).toString());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_GSM_NETWORK_TYPE))) {
-        setNetworkType((NetworkType)setting.value(QLatin1String(NM_SETTING_GSM_NETWORK_TYPE)).toInt());
+    if (setting.contains(QLatin1String(NM_SETTING_GSM_DEVICE_ID))) {
+        setNetworkType((NetworkType)setting.value(QLatin1String(NM_SETTING_GSM_DEVICE_ID)).toInt());
     }
 
     // Secrets
@@ -303,8 +303,8 @@ void NetworkManager::GsmSetting::fromMap
         setPinFlags((SecretFlags)setting.value(QLatin1String(NM_SETTING_GSM_PIN_FLAGS)).toInt());
     }
 
-    if (setting.contains(QLatin1String(NM_SETTING_GSM_ALLOWED_BANDS))) {
-        setAllowedBand(setting.value(QLatin1String(NM_SETTING_GSM_ALLOWED_BANDS)).toUInt());
+    if (setting.contains(QLatin1String(NM_SETTING_GSM_SIM_ID))) {
+        setAllowedBand(setting.value(QLatin1String(NM_SETTING_GSM_SIM_ID)).toUInt());
     }
 
     if (setting.contains(QLatin1String(NM_SETTING_GSM_HOME_ONLY))) {
@@ -340,7 +340,7 @@ QVariantMap NetworkManager::GsmSetting::
     }
 
     if (networkType() != -1) {
-        setting.insert(QLatin1String(NM_SETTING_GSM_NETWORK_TYPE), networkType());
+        setting.insert(QLatin1String(NM_SETTING_GSM_DEVICE_ID), networkType());
     }
 
     // Secrets
@@ -351,7 +351,7 @@ QVariantMap NetworkManager::GsmSetting::
     setting.insert(QLatin1String(NM_SETTING_GSM_PIN_FLAGS), (int)pinFlags());
 
     if (allowedBand() != 1) {
-        setting.insert(QLatin1String(NM_SETTING_GSM_ALLOWED_BANDS), allowedBand());
+        setting.insert(QLatin1String(NM_SETTING_GSM_SIM_ID), allowedBand());
     }
 
     if (homeOnly()) {
@@ -372,8 +372,8 @@ QDebug NetworkManager::operator <<(QDebu
     dbg.nospace() << NM_SETTING_GSM_PASSWORD_FLAGS << ": " << setting.passwordFlags() << '\n';
     dbg.nospace() << NM_SETTING_GSM_APN << ": " << setting.apn() << '\n';
     dbg.nospace() << NM_SETTING_GSM_NETWORK_ID << ": " << setting.networkId() << '\n';
-    dbg.nospace() << NM_SETTING_GSM_NETWORK_TYPE << ": " << setting.networkType() << '\n';
-    dbg.nospace() << NM_SETTING_GSM_ALLOWED_BANDS << ": " << setting.allowedBand() << '\n';
+    dbg.nospace() << NM_SETTING_GSM_DEVICE_ID << ": " << setting.networkType() << '\n';
+    dbg.nospace() << NM_SETTING_GSM_SIM_ID << ": " << setting.allowedBand() << '\n';
     dbg.nospace() << NM_SETTING_GSM_PIN << ": " << setting.pin() << '\n';
     dbg.nospace() << NM_SETTING_GSM_PIN_FLAGS << ": " << setting.pinFlags() << '\n';
     dbg.nospace() << NM_SETTING_GSM_HOME_ONLY << ": " << setting.homeOnly() << '\n';
