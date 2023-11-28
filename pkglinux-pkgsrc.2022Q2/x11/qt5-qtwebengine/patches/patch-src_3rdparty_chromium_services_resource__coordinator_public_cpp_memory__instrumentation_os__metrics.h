$NetBSD: patch-src_3rdparty_chromium_services_resource__coordinator_public_cpp_memory__instrumentation_os__metrics.h,v 1.2 2022/04/18 11:18:19 adam Exp $

--- src/3rdparty/chromium/services/resource_coordinator/public/cpp/memory_instrumentation/os_metrics.h.orig	2021-02-19 16:41:59.000000000 +0000
+++ src/3rdparty/chromium/services/resource_coordinator/public/cpp/memory_instrumentation/os_metrics.h
@@ -45,7 +45,7 @@ class COMPONENT_EXPORT(
                                     mojom::RawOSMemDump*);
   static std::vector<mojom::VmRegionPtr> GetProcessMemoryMaps(base::ProcessId);
 
-#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_ANDROID)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_ANDROID) || defined(OS_BSD)
   static void SetProcSmapsForTesting(FILE*);
 #endif  // defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_ANDROID)
 
@@ -61,7 +61,7 @@ class COMPONENT_EXPORT(
   static std::vector<mojom::VmRegionPtr> GetProcessModules(base::ProcessId);
 #endif
 
-#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_ANDROID)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_ANDROID) || defined(OS_BSD)
   // Provides information on the dump state of resident pages. These values are
   // written to logs. New enum values can be added, but existing enums must
   // never be renumbered or deleted and reused.
