$NetBSD$

--- ksym_mod.c.orig	2014-10-04 19:47:18.000000000 +0000
+++ ksym_mod.c
@@ -189,7 +189,6 @@ extern int InitMsyms()
 		else
 			Syslog(LOG_ERR, "Error loading kernel symbols " \
 			       "- %s\n", strerror(errno));
-		fclose(ksyms);
 		return(0);
 	}
 
