$NetBSD$

--- src/main.c.orig	2022-08-11 15:59:46.430000000 +0000
+++ src/main.c
@@ -356,6 +356,7 @@ dump_gjs_stack_on_signal_handler (int si
 static void
 dump_gjs_stack_on_signal (int signo)
 {
+#if 0
   struct sigaction sa = {
     .sa_flags   = SA_RESETHAND | SA_NODEFER,
     .sa_handler = dump_gjs_stack_on_signal_handler,
@@ -365,6 +366,7 @@ dump_gjs_stack_on_signal (int signo)
 
   sigaction (signo, &sa, NULL);
   _tracked_signals[signo] = TRUE;
+#endif
 }
 
 static gboolean
