$NetBSD$

--- gtk3/fcitxtheme.h.orig	2021-01-27 16:30:13.362310600 +0000
+++ gtk3/fcitxtheme.h
@@ -10,6 +10,9 @@
 #include "utils.h"
 #include <cairo/cairo.h>
 #include <gdk/gdk.h>
+#include <iostream>
+#include <algorithm>
+#include <cstdlib>
 #include <memory>
 #include <string>
 #include <unordered_map>
