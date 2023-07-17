$NetBSD: patch-src_3rdparty_chromium_content_browser_scheduler_responsiveness_jank__monitor_impl.cc,v 1.1 2022/04/18 11:18:18 adam Exp $

--- src/3rdparty/chromium/content/browser/scheduler/responsiveness/jank_monitor_impl.cc.orig	2021-02-19 16:41:59.000000000 +0000
+++ src/3rdparty/chromium/content/browser/scheduler/responsiveness/jank_monitor_impl.cc
@@ -332,7 +332,7 @@ void JankMonitorImpl::ThreadExecutionSta
     // in context menus, among others). Simply ignore the mismatches for now.
     // See https://crbug.com/929813 for the details of why the mismatch
     // happens.
-#if !defined(OS_CHROMEOS) && defined(OS_LINUX) && defined(USE_OZONE)
+#if !defined(OS_CHROMEOS) && (defined(OS_LINUX) || defined(OS_BSD)) && defined(USE_OZONE)
     task_execution_metadata_.clear();
 #endif
     return;
