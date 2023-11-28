#!/bin/sh

if [ -z "$DRACUT_SYSTEMD" ]; then
[ ! -h "$NEWROOT/etc/"    ] && [ -d "$NEWROOT/etc/"    ] && mount --rbind "$NEWROOT/pkg/native/etc"    "$NEWROOT/etc"
[ ! -h "$NEWROOT/bin/"    ] && [ -d "$NEWROOT/bin/"    ] && mount --rbind "$NEWROOT/pkg/native/bin"    "$NEWROOT/bin"
[ ! -h "$NEWROOT/lib/"    ] && [ -d "$NEWROOT/lib/"    ] && mount --rbind "$NEWROOT/pkg/native/lib"    "$NEWROOT/lib"
[ ! -h "$NEWROOT/lib32/"  ] && [ -d "$NEWROOT/lib32/"  ] && mount --rbind "$NEWROOT/pkg/native/lib32"  "$NEWROOT/lib32"
[ ! -h "$NEWROOT/libx32/" ] && [ -d "$NEWROOT/libx32/" ] && mount --rbind "$NEWROOT/pkg/native/libx32" "$NEWROOT/libx32"
[ ! -h "$NEWROOT/lib64/"  ] && [ -d "$NEWROOT/lib64/"  ] && mount --rbind "$NEWROOT/pkg/native/lib64"  "$NEWROOT/lib64"
[ ! -h "$NEWROOT/sbin/"   ] && [ -d "$NEWROOT/sbin/"   ] && mount --rbind "$NEWROOT/pkg/native/sbin"   "$NEWROOT/sbin"
[ ! -h "$NEWROOT/usr/"    ] && [ -d "$NEWROOT/usr/"    ] && mount --rbind "$NEWROOT/pkg/native/usr"    "$NEWROOT/usr"
fi
