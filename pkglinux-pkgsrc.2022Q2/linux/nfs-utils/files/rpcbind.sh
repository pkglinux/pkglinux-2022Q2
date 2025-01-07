#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: rpcbind.sh,v 1.0 2024/12/30 03:27:50 Exp $
#

# PROVIDE: nfsd

. /etc/rc.subr

name="rpcbind"
command="@PREFIX@/sbin/${name}"

#load_rc_config $name
#run_rc_command "$1"
statusproc()
{
	local pid

	pid=$(checkproc -v $1)
	if [ -z "${pid}" ]; then
		echo -e "$1 is not running."
	else
		echo -e  "$1 is running with Process ID ${pid}."
	fi
}

name="rpcbind"
command="@PREFIX@/sbin/${name}"

load_rc_config $name
#run_rc_command "$1"
case ${1:-start} in
	start)
		echo "Starting rpcbind..."
		modprobe nfsd
		modprobe nfsv3
		@PREFIX@/sbin/start_daemon $command
		;;
	status)
		statusproc $command
		;;
	stop)
		echo "Stopping rpcbind..."
		@PREFIX@/sbin/killproc $command
		;;
	restart)
		$0 stop
		sleep 1
		$0 start
		;;
	*)
		echo "Usage: $0 {start|stop|restart|status}"
		exit 1
		;;
esac
