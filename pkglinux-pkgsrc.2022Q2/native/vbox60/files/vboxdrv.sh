#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: vboxdrv.sh,v 2.31 2023/12/16 11:53:29 Exp $
#
# PROVIDE: vboxdrv
# REQUIRE: sshd DAEMON NETWORKING

. /etc/rc.subr

name="vboxdrv"
rcvar=$name
vboxpath="@PREFIX@/native/usr/lib/virtualbox"
command="${vboxpath}/${name}.sh"

if [ -f /etc/rc.subr -a -f /pkg/etc/rc.conf -a -f /pkg/etc/rc.d/DAEMON ]
then
	load_rc_config $name
	case ${1:-start} in
		start)
			$command $1
			chmod 660 /dev/vboxdrv
			;;
		status)
			$command $1
			;;
		stop)
			$command $1
			;;
		restart)
			$command $1
			chmod 660 /dev/vboxdrv
			;;
	esac
fi
