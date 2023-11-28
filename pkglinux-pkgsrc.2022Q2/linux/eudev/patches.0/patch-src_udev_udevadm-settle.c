$NetBSD$

--- src/udev/udevadm-settle.c.orig	2021-09-14 18:15:40.000000000 +0000
+++ src/udev/udevadm-settle.c
@@ -137,6 +137,7 @@ static int adm_settle(struct udev *udev,
                 goto out;
         }
 
+        fprintf(stdout, "HERE0\n");
         for (;;) {
                 if (exists && access(exists, F_OK) >= 0) {
                         rc = EXIT_SUCCESS;
@@ -156,9 +157,11 @@ static int adm_settle(struct udev *udev,
                 if (poll(pfd, 1, MSEC_PER_SEC) > 0 && pfd[0].revents & POLLIN)
                         udev_queue_flush(queue);
         }
+        fprintf(stdout, "HERE1\n");
 
 out:
         udev_queue_unref(queue);
+        fprintf(stdout, "HERE2\n");
         return rc;
 }
 
