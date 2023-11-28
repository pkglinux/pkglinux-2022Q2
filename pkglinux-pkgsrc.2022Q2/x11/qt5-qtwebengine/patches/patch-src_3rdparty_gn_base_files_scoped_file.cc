$NetBSD: patch-src_3rdparty_gn_base_files_scoped_file.cc,v 1.2 2022/04/18 11:18:19 adam Exp $

--- src/3rdparty/gn/base/files/scoped_file.cc.orig
+++ src/3rdparty/gn/base/files/scoped_file.cc
@@ -31,7 +31,7 @@ void ScopedFDCloseTraits::Free(int fd) {
   int ret = IGNORE_EINTR(close(fd));
 
 #if defined(OS_LINUX) || defined(OS_MACOSX) || defined(OS_FUCHSIA) || \
-    defined(OS_ANDROID)
+    defined(OS_ANDROID) || defined(OS_BSD)
   // NB: Some file descriptors can return errors from close() e.g. network
   // filesystems such as NFS and Linux input devices. On Linux, macOS, and
   // Fuchsia's POSIX layer, errors from close other than EBADF do not indicate