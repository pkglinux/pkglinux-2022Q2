$NetBSD$

--- daemon/gvfsbackendgphoto2.c.orig	2011-03-21 15:42:18.000000000 +0000
+++ daemon/gvfsbackendgphoto2.c
@@ -1649,7 +1649,7 @@ do_mount (GVfsBackend *backend,
       return;
     }
 
-  DEBUG ("  '%s' '%s' '%s'",  info.name, info.path, info.library_filename);
+/*  DEBUG ("  '%s' '%s' '%s'",  info.name, info.path, info.library_filename); */
   
   /* set port */
   rc = gp_camera_set_port_info (gphoto2_backend->camera, info);
@@ -2668,7 +2668,7 @@ do_slow_file_rename_in_same_dir (GVfsBac
         }
     }
 
-  rc = gp_camera_folder_put_file (gphoto2_backend->camera, dir, file_dest, gphoto2_backend->context);
+  rc = gp_camera_folder_put_file (gphoto2_backend->camera, dir, new_name, GP_FILE_TYPE_RAW, file_dest,  gphoto2_backend->context);
   if (rc != 0)
     goto out;
 
@@ -3300,14 +3300,13 @@ commit_write_handle (GVfsBackendGphoto2
   if (rc != 0)
     goto out;
 
-  gp_file_set_type (file, GP_FILE_TYPE_NORMAL);
   gp_file_set_name (file, write_handle->name);
   gp_file_set_mtime (file, time (NULL));
   gp_file_set_data_and_size (file, 
                              dup_for_gphoto2 (write_handle->data, write_handle->size), 
                              write_handle->size);
   
-  rc = gp_camera_folder_put_file (gphoto2_backend->camera, write_handle->dir, file, gphoto2_backend->context);
+  rc = gp_camera_folder_put_file (gphoto2_backend->camera, write_handle->dir, write_handle->name, GP_FILE_TYPE_RAW, file,  gphoto2_backend->context);
   if (rc != 0)
     {
       gp_file_unref (file);
