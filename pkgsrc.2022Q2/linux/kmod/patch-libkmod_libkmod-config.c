$NetBSD$

--- libkmod/libkmod-config.c.orig	2021-04-09 15:11:44.270027193 +0000
+++ libkmod/libkmod-config.c
@@ -849,31 +849,34 @@ static int conf_files_list(struct kmod_c
 	int err;
 	struct stat st;
 	struct dirent *dent;
+	char r[PATH_MAX], *p;
 
-	if (stat(path, &st) != 0) {
+	p = realpath(path, r);
+
+	if (stat(p, &st) != 0) {
 		err = -errno;
-		DBG(ctx, "could not stat '%s': %m\n", path);
+		DBG(ctx, "could not stat '%s': %m\n", p);
 		return err;
 	}
 
 	*path_stamp = stat_mstamp(&st);
 
 	if (!S_ISDIR(st.st_mode)) {
-		conf_files_insert_sorted(ctx, list, path, NULL);
+		conf_files_insert_sorted(ctx, list, p, NULL);
 		return 0;
 	}
 
-	d = opendir(path);
+	d = opendir(p);
 	if (d == NULL) {
-		ERR(ctx, "opendir(%s): %m\n", path);
+		ERR(ctx, "opendir(%s): %m\n", p);
 		return -EINVAL;
 	}
 
 	for (dent = readdir(d); dent != NULL; dent = readdir(d)) {
-		if (conf_files_filter_out(ctx, d, path, dent->d_name))
+		if (conf_files_filter_out(ctx, d, p, dent->d_name))
 			continue;
 
-		conf_files_insert_sorted(ctx, list, path, dent->d_name);
+		conf_files_insert_sorted(ctx, list, p, dent->d_name);
 	}
 
 	closedir(d);
