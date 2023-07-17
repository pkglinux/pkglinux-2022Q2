$NetBSD$

--- libxfs/xfs_ialloc.c.orig	2005-10-07 16:51:36.000000000 +0000
+++ libxfs/xfs_ialloc.c
@@ -31,6 +31,7 @@
  */
 
 #include <xfs.h>
+#include <sys/stat.h>
 
 /*
  * Internal functions.
@@ -315,7 +316,7 @@ xfs_ialloc_ag_alloc(
 	return 0;
 }
 
-STATIC __inline xfs_agnumber_t
+static xfs_agnumber_t
 xfs_ialloc_next_ag(
 	xfs_mount_t	*mp)
 {
