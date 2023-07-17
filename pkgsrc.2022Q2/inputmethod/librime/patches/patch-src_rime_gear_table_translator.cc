$NetBSD$

--- src/rime/gear/table_translator.cc.orig	2021-02-07 12:37:26.000000000 +0000
+++ src/rime/gear/table_translator.cc
@@ -4,6 +4,7 @@
 //
 // 2011-07-10 GONG Chen <chen.sst@gmail.com>
 //
+#include <cmath>
 #include <boost/algorithm/string.hpp>
 #include <boost/range/adaptor/reversed.hpp>
 #include <utf8.h>
