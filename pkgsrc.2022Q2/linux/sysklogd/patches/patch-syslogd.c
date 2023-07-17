$NetBSD$

--- syslogd.c.orig	2014-10-04 19:47:18.000000000 +0000
+++ syslogd.c
@@ -2094,7 +2094,7 @@ void reapchild()
 	(void) signal(SIGCHLD, reapchild);	/* reset signal handler -ASP */
 	wait ((int *)0);
 #else
-	union wait status;
+	int status;
 
 	while (wait3(&status, WNOHANG, (struct rusage *) NULL) > 0)
 		;
