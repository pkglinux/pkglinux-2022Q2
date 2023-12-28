$NetBSD$

--- chkconfig.c.orig	2023-08-02 11:28:31.000000000 +0000
+++ chkconfig.c
@@ -736,7 +736,7 @@ int main(int argc, const char **argv) {
     }
 
     if (version) {
-        fprintf(stdout, _("%s version %s\n"), progname, VERSION);
+        fprintf(stdout, _("%s version %s  RUNLEVELS=%s\n"), progname, VERSION, RUNLEVELS);
         exit(0);
     }
 
