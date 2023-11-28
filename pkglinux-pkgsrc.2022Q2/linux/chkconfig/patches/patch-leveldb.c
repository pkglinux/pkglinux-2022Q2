$NetBSD$

--- leveldb.c.orig	2021-01-21 08:19:06.000000000 +0000
+++ leveldb.c
@@ -22,8 +22,6 @@
 #include <libgen.h>
 #include <libintl.h>
 #include <locale.h>
-#include <selinux/label.h>
-#include <selinux/selinux.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -41,47 +39,6 @@
 
 #include "leveldb.h"
 
-int selinux_restore(const char *name) {
-    struct selabel_handle *hnd = NULL;
-    struct stat buf;
-    security_context_t newcon = NULL;
-    int r = -1;
-
-    hnd = selabel_open(SELABEL_CTX_FILE, NULL, 0);
-    if (hnd == NULL)
-        goto out;
-
-    r = stat(name, &buf);
-    if (r < 0)
-        goto out;
-
-    r = selabel_lookup_raw(hnd, &newcon, name, buf.st_mode);
-    if (r < 0)
-        goto out;
-
-    r = setfilecon_raw(name, newcon);
-    if (r < 0)
-        goto out;
-
-    r = 0;
-
-out:
-    if (hnd)
-        selabel_close(hnd);
-    if (newcon)
-        freecon(newcon);
-
-    /* Lets ignore any errors when selinux is disabled.
-     * We still want to run the previous code though,
-     * since we only need selinux policy.
-     * Selinux itself can be turned off.
-     */
-    if (!is_selinux_enabled())
-        return 0;
-
-    return r;
-}
-
 int parseLevels(char *str, int emptyOk) {
     char *chptr = str;
     int rc = 0;
@@ -760,7 +717,7 @@ int findServiceEntries(char *name, int l
     glob_t globres;
     int rc;
 
-    rc = asprintf(&match, "%s/rc%d.d/[SK][0-9][0-9]%s", RUNLEVELS, level, name);
+    rc = asprintf(&match, "%s/rc.d/rc%d.d/[SK][0-9][0-9]%s", RUNLEVELS, level, name);
 
     if (rc < 0) {
         fprintf(stderr, _("failed to glob pattern %s: %s\n"), match,
@@ -897,9 +854,6 @@ int setXinetdService(struct service s, i
     close(newfd);
     unlink(oldfname);
     r = rename(newfname, oldfname);
-    if (selinux_restore(oldfname) != 0)
-        fprintf(stderr, _("Unable to set SELinux context for %s: %s\n"),
-                oldfname, strerror(errno));
     return (r);
 }
 
@@ -917,7 +871,7 @@ int doSetService(struct service s, int l
             globfree(&globres);
     }
 
-    sprintf(linkname, "%s/rc%d.d/%c%02d%s", RUNLEVELS, level, on ? 'S' : 'K',
+    sprintf(linkname, "%s/rc.d/rc%d.d/%c%02d%s", RUNLEVELS, level, on ? 'S' : 'K',
             priority, s.name);
     sprintf(linkto, "../init.d/%s", s.name);
 
