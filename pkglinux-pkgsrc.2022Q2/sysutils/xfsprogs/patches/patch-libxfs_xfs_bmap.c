$NetBSD$

--- libxfs/xfs_bmap.c.orig	2005-10-07 16:51:35.000000000 +0000
+++ libxfs/xfs_bmap.c
@@ -296,10 +296,6 @@ xfs_bmap_add_extent(
 		*curp = cur;
 	}
 done:
-#ifdef DEBUG
-	if (!error)
-		xfs_bmap_check_leaf_extents(*curp, ip, whichfork);
-#endif
 	*logflagsp = logflags;
 	return error;
 }
