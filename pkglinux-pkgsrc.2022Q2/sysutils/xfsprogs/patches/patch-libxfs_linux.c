$NetBSD$

--- libxfs/linux.c.orig	2005-10-07 16:51:35.000000000 +0000
+++ libxfs/linux.c
@@ -30,14 +30,12 @@
  * http://oss.sgi.com/projects/GenInfo/SGIGPLNoticeExplan/
  */
 
-#define ustat __kernel_ustat
 #include <xfs/libxfs.h>
 #include <mntent.h>
 #include <sys/stat.h>
-#undef ustat
-#include <sys/ustat.h>
 #include <sys/mount.h>
 #include <sys/ioctl.h>
+#include <sys/sysmacros.h>
 
 extern char *progname;
 
@@ -60,8 +58,10 @@ extern char *progname;
 int
 platform_check_ismounted(char *name, char *block, struct stat64 *s, int verbose)
 {
-	struct ustat	ust;
-	struct stat64	st;
+	FILE		*f;
+	struct stat64	st, mst;
+	struct mntent	*mnt;
+	char		mounts[MAXPATHLEN];
 
 	if (!s) {
 		if (stat64(block, &st) < 0)
@@ -71,14 +71,26 @@ platform_check_ismounted(char *name, cha
 		s = &st;
 	}
 
-	if (ustat(s->st_rdev, &ust) >= 0) {
+	strcpy(mounts, (!access(PROC_MOUNTED, R_OK)) ? PROC_MOUNTED : MOUNTED);
+	if ((f = setmntent(mounts, "r")) == NULL) {
+		fprintf(stderr,
+		    _("%s: %s possibly contains a mounted filesystem\n"),
+		    progname, name);
+		return 1;
+	}
+	while ((mnt = getmntent(f)) != NULL) {
+		if (stat64(mnt->mnt_dir, &mst) < 0)
+			continue;
+		if (mst.st_dev != s->st_rdev)
+			continue;
 		if (verbose)
 			fprintf(stderr,
 				_("%s: %s contains a mounted filesystem\n"),
 				progname, name);
-		return 1;
+		break;
 	}
-	return 0;
+	endmntent(f);
+	return mnt != NULL;
 }
 
 int
