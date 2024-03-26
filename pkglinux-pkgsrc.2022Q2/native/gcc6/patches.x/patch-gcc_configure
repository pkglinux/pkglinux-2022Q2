$NetBSD$

--- gcc/configure.orig	2024-02-10 15:55:30.762744976 +0000
+++ gcc/configure
@@ -733,6 +733,7 @@ INCINTL
 LIBINTL_DEP
 LIBINTL
 USE_NLS
+HAVE_AUTO_BUILD
 extra_opt_files
 extra_modes_file
 NATIVE_SYSTEM_HEADER_DIR
@@ -11784,6 +11785,7 @@ done
 if test x$host = x$build
 then
 	build_auto=auto-host.h
+	HAVE_AUTO_BUILD='# '
 else
 	# We create a subdir, then run autoconf in the subdir.
 	# To prevent recursion we set host and build for the new
@@ -11806,7 +11808,7 @@ else
 	GMPINC="" CPPFLAGS="${CPPFLAGS} -DGENERATOR_FILE" \
 	${realsrcdir}/configure \
 		--enable-languages=${enable_languages-all} \
-		--target=$target_alias --host=$build_alias --build=$build_alias
+		--target=$target_alias --host=$build_alias --build=$build_alias || exit # retaining $tempdir
 
 	# We just finished tests for the build machine, so rename
 	# the file auto-build.h in the gcc directory.
@@ -11814,6 +11816,7 @@ else
 	cd ..
 	rm -rf $tempdir
 	build_auto=auto-build.h
+	HAVE_AUTO_BUILD=
 fi
 
 
@@ -28798,7 +28801,7 @@ case "$target" in
       gcc_cv_target_dl_iterate_phdr=no
     fi
     ;;
-  *-*-dragonfly* | *-*-freebsd*)
+  *-*-dragonfly* | *-*-freebsd* | *-*-netbsd* )
     if grep dl_iterate_phdr $target_header_dir/sys/link_elf.h > /dev/null 2>&1; then
       gcc_cv_target_dl_iterate_phdr=yes
     else
