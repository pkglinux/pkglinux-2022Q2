$NetBSD$

--- libiberty/fibheap.c.orig	2022-05-06 07:31:00.000000000 +0000
+++ libiberty/fibheap.c
@@ -25,6 +25,7 @@ Boston, MA 02110-1301, USA.  */
 #ifdef HAVE_LIMITS_H
 #include <limits.h>
 #endif
+#include <limits.h>
 #ifdef HAVE_STDLIB_H
 #include <stdlib.h>
 #endif
