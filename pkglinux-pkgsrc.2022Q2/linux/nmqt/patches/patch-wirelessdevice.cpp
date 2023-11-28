$NetBSD$

--- wirelessdevice.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ wirelessdevice.cpp
@@ -23,7 +23,7 @@
 #include "wirelessdevice.h"
 #include "wirelessdevice_p.h"
 
-#include <libnm-glib/nm-device-wifi.h>
+#include <libnm/nm-device-wifi.h>
 
 #include "accesspoint.h"
 #include "manager_p.h"
