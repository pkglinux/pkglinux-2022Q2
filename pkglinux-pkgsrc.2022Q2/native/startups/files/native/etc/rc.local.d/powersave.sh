#!/bin/sh

[ -x /sbin/powersave ] && /sbin/powersave

: '
# for VirtualBox EL6 version
[ -x 	/etc/rc.d/init.d/vboxdrv ] && \
	/etc/rc.d/init.d/vboxdrv start && \
	chown root:vboxusers /dev/vboxdrv && \
	chmod 0660 /dev/vboxdrv || \
# for virtualbox-ose
[ -x 	/usr/lib/virtualbox/vboxdrv.sh ] && \
	/usr/lib/virtualbox/vboxdrv.sh start && \
	chmod 0660 /dev/vboxdrv
'
