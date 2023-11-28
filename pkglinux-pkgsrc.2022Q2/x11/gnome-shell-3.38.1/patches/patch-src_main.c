$NetBSD$

--- src/main.c.orig	2020-10-05 18:36:07.968836800 +0000
+++ src/main.c
@@ -395,6 +395,7 @@ dump_gjs_stack_on_signal_handler (int si
 static void
 dump_gjs_stack_on_signal (int signo)
 {
+#if 0
   struct sigaction sa = {
     .sa_flags   = SA_RESETHAND | SA_NODEFER,
     .sa_handler = dump_gjs_stack_on_signal_handler,
@@ -404,6 +405,7 @@ dump_gjs_stack_on_signal (int signo)
 
   sigaction (signo, &sa, NULL);
   _tracked_signals[signo] = TRUE;
+#endif
 }
 
 static gboolean
