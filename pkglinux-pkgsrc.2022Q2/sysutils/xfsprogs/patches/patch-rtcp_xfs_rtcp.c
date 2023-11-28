$NetBSD$

--- rtcp/xfs_rtcp.c.orig	2005-10-07 16:51:38.000000000 +0000
+++ rtcp/xfs_rtcp.c
@@ -30,6 +30,7 @@
  * http://oss.sgi.com/projects/GenInfo/SGIGPLNoticeExplan/
  */
 
+#include <sys/stat.h>
 #include <libxfs.h>
 
 int rtcp(char *, char *, int);
