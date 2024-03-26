$NetBSD$

--- gcc/configure.ac.orig	2018-03-08 08:55:59.000000000 +0000
+++ gcc/configure.ac
@@ -1670,6 +1670,7 @@ AC_SUBST(extra_opt_files)
 if test x$host = x$build
 then
 	build_auto=auto-host.h
+	HAVE_AUTO_BUILD='# '
 else
 	# We create a subdir, then run autoconf in the subdir.
 	# To prevent recursion we set host and build for the new
@@ -1692,7 +1693,7 @@ else
 	GMPINC="" CPPFLAGS="${CPPFLAGS} -DGENERATOR_FILE" \
 	${realsrcdir}/configure \
 		--enable-languages=${enable_languages-all} \
-		--target=$target_alias --host=$build_alias --build=$build_alias
+		--target=$target_alias --host=$build_alias --build=$build_alias || exit # retaining $tempdir
 
 	# We just finished tests for the build machine, so rename
 	# the file auto-build.h in the gcc directory.
@@ -1700,8 +1701,10 @@ else
 	cd ..
 	rm -rf $tempdir
 	build_auto=auto-build.h
+	HAVE_AUTO_BUILD=
 fi
 AC_SUBST(build_subdir)
+AC_SUBST(HAVE_AUTO_BUILD)
 
 tm_file="${tm_file} defaults.h"
 tm_p_file="${tm_p_file} tm-preds.h"
