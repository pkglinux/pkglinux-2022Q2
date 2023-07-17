$NetBSD$

--- src/rime/gear/script_translator.cc.orig	2021-02-07 12:37:26.000000000 +0000
+++ src/rime/gear/script_translator.cc
@@ -7,6 +7,7 @@
 // 2011-07-10 GONG Chen <chen.sst@gmail.com>
 //
 #include <algorithm>
+#include <cmath>
 #include <stack>
 #include <boost/algorithm/string/join.hpp>
 #include <boost/range/adaptor/reversed.hpp>
