$NetBSD: patch-src_3rdparty_chromium_mojo_public_c_system_thunks.cc,v 1.2 2022/04/18 11:18:19 adam Exp $

--- src/3rdparty/chromium/mojo/public/c/system/thunks.cc.orig	2021-02-19 16:41:59.000000000 +0000
+++ src/3rdparty/chromium/mojo/public/c/system/thunks.cc
@@ -20,7 +20,7 @@
 #include "mojo/public/c/system/core.h"
 #include "mojo/public/c/system/macros.h"
 
-#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_WIN)
+#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_WIN) || defined(OS_BSD)
 #include "base/environment.h"
 #include "base/files/file_path.h"
 #include "base/optional.h"
@@ -68,7 +68,7 @@ class CoreLibraryInitializer {
   ~CoreLibraryInitializer() = default;
 
   MojoResult LoadLibrary(base::FilePath library_path) {
-#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_WIN)
+#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_WIN) || defined(OS_BSD)
     if (library_ && library_->is_valid())
       return MOJO_RESULT_OK;
 
@@ -82,7 +82,7 @@ class CoreLibraryInitializer {
 
     if (library_path.empty()) {
       // Default to looking for the library in the current working directory.
-#if defined(OS_CHROMEOS) || defined(OS_LINUX)
+#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_BSD)
       const base::FilePath::CharType kDefaultLibraryPathValue[] =
           FILE_PATH_LITERAL("./libmojo_core.so");
 #elif defined(OS_WIN)
@@ -132,7 +132,7 @@ class CoreLibraryInitializer {
   }
 
  private:
-#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_WIN)
+#if defined(OS_CHROMEOS) || defined(OS_LINUX) || defined(OS_WIN) || defined(OS_BSD)
   base::Optional<base::ScopedNativeLibrary> library_;
 #endif
 };
