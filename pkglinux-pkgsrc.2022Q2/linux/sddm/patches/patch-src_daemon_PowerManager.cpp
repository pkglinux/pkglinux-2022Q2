$NetBSD$

--- src/daemon/PowerManager.cpp.orig	2020-11-02 10:03:22.000000000 +0000
+++ src/daemon/PowerManager.cpp
@@ -205,7 +205,7 @@ const QString CK2_OBJECT = QStringLitera
             m_backends << new SeatManagerBackend(CK2_SERVICE, CK2_PATH, CK2_OBJECT);
 
         // check if upower interface exists
-        if (interface->isServiceRegistered(UPOWER_SERVICE))
+//        if (interface->isServiceRegistered(UPOWER_SERVICE))
             m_backends << new UPowerBackend(UPOWER_SERVICE, UPOWER_PATH, UPOWER_OBJECT);
     }
 
