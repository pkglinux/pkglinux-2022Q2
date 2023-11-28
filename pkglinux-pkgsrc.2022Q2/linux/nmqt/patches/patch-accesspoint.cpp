$NetBSD$

--- accesspoint.cpp.orig	2015-04-07 15:47:20.000000000 +0000
+++ accesspoint.cpp
@@ -25,7 +25,7 @@
 #include "manager_p.h"
 #include "wirelessdevice.h"
 
-#include <libnm-glib/nm-device-wifi.h>
+#include <libnm/nm-device-wifi.h>
 
 #include "nmdebug.h"
 
