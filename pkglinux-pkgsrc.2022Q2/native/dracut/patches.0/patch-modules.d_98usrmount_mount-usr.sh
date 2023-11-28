$NetBSD$

--- modules.d/98usrmount/mount-usr.sh.orig	2022-06-19 22:35:26.000000000 +0000
+++ modules.d/98usrmount/mount-usr.sh
@@ -105,6 +105,15 @@ mount_usr() {
     fi
 }
 
+[ -d "$NEWROOT/etc/"    ] && mount --rbind "$NEWROOT/pkg/native/etc"    "$NEWROOT/etc"
+[ -d "$NEWROOT/bin/"    ] && mount --rbind "$NEWROOT/pkg/native/bin"    "$NEWROOT/bin"
+[ -d "$NEWROOT/lib/"    ] && mount --rbind "$NEWROOT/pkg/native/lib"    "$NEWROOT/lib"
+[ -d "$NEWROOT/lib32/"  ] && mount --rbind "$NEWROOT/pkg/native/lib32"  "$NEWROOT/lib32"
+[ -d "$NEWROOT/libx32/" ] && mount --rbind "$NEWROOT/pkg/native/libx32" "$NEWROOT/libx32"
+[ -d "$NEWROOT/lib64/"  ] && mount --rbind "$NEWROOT/pkg/native/lib64"  "$NEWROOT/lib64"
+[ -d "$NEWROOT/sbin/"   ] && mount --rbind "$NEWROOT/pkg/native/sbin"   "$NEWROOT/sbin"
+[ -d "$NEWROOT/usr/"    ] && mount --rbind "$NEWROOT/pkg/native/usr"    "$NEWROOT/usr"
+
 if [ -f "$NEWROOT/etc/fstab" ]; then
     mount_usr
 fi
