#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: nfsd.sh,v 1.1 2003/12/30 03:27:50 jeremy-c-reed Exp $
#

# PROVIDE: nfsd
# REQUIRE: mountd

. /etc/rc.subr

# sudo setcap 'cap_net_bind_service=+ep' /pkg/libexec/gvfsd-nfs
name="nfsd"
rcvar="nfs_server"
command="@PREFIX@/sbin/rpc.${name}"
required_vars="mountd portmap"

#load_rc_config $name
#run_rc_command "$1"
if [ -f /etc/nfs.conf ]
then
	load_rc_config $name
	case ${1:-start} in
		start)
			#$command -d -V 3 -t -p 2049
			run_rc_command "$1"
			;;
		status)
			ps -Al | grep $name
			;;
		stop)
			killall -9 $name
			;;
		restart)
			$0 stop
			sleep 1
			$0 start
			;;
	esac
fi
