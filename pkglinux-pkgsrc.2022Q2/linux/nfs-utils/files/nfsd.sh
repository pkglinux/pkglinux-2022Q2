#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: nfsd.sh,v 1.1 2003/12/30 03:27:50 jeremy-c-reed Exp $
#

# PROVIDE: nfsd
# REQUIRE: rpcbind

. /etc/rc.subr

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

nfs_status()
{
	local nfsiod
	local nfsd
	local pid

	nfsiod=$(ps -ef|grep '\[nfsiod]$'|sed 's/ \+/\t/g'| cut -f2)
	if [ -z "${nfsiod}" ]; then
		echo -e "[nfsiod] is not running."
	else
		echo -e  "[nfsiod] is running with Process" \
			"ID ${nfsiod}."
	fi

	nfsd=""
	for pid in $(ps -ef|grep '\[nfsd]$'|sed 's/ \+/\t/g'| cut -f2); do
		nfsd="${nfsd} ${pid}"
	done

	if [ -z "${nfsd}" ]; then
		echo -e "No [nfsd] processes are running."
	else
		echo -e  "[nfsd] is running with Process" \
			"ID(s)${nfsd}."
	fi
}

# sudo setcap 'cap_net_bind_service=+ep' /pkg/libexec/gvfsd-nfs
# getcap /pkg/libexec/gvfsd-nfs
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
			echo "Starting NFS rpcbind..."
			@PREFIX@/etc/rc.d/rpcbind start
			echo "Starting NFS statd..."
			@PREFIX@/sbin/start_daemon @PREFIX@/sbin/rpc.statd --no-notify
			echo "Starting NFS nfsd..."
			@PREFIX@/sbin/start_daemon @PREFIX@/sbin/rpc.nfsd -t -u
			echo "Starting NFS mountd..."
			@PREFIX@/sbin/start_daemon @PREFIX@/sbin/rpc.mountd
			# Make certain that the list is refreshed on a restart.
			echo "Exporting NFS Filesystems..."
			@PREFIX@/sbin/exportfs -r 2>&1 > /dev/null
			;;
		status)
			statusproc @PREFIX@/sbin/rpcbind
			statusproc @PREFIX@/sbin/rpc.mountd
			statusproc @PREFIX@/sbin/rpc.statd
			## Special case for nfsd
			nfs_status
			;;
		stop)
			echo "Removing NFS Exported Filesystems..."
			@PREFIX@/sbin/exportfs -au 2>&1 > /dev/null
			echo "Stopping NFS statd..."
			@PREFIX@/sbin/killproc @PREFIX@/sbin/rpc.statd
			echo "Stopping NFS nfsd..."
			$command 0
			echo "Stopping NFS mountd..."
			@PREFIX@/sbin/killproc @PREFIX@/sbin/rpc.mountd
			# Remove a pid file that isn't done automatically
			if [ -f /run/rpc.statd.pid ]; then
				echo "Removing the rpc.statd pid file if it exists"
				rm -f /run/rpc.statd.pid
			fi
			;;
		reload)
			echo "Reloading NFS Server..."
			@PREFIX@/sbin/exportfs -r
			;;
		restart)
			$0 stop
			sleep 1
			$0 start
			;;
		*)
			echo "Usage: $0 {start|stop|restart|reload|status}"
			exit 1
			;;
	esac
fi
