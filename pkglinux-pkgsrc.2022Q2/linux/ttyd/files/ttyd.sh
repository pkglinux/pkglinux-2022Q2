#!/bin/sh
#
# $NetBSD: ttyd.sh,v 2.31 2025/01/07 11:53:29 Exp $
#
# PROVIDE: ttyd
# REQUIRE: LOGIN

. /etc/rc.subr

name="ttyd"
rcvar=$name
command="@PREFIX@/bin/${name}"
pidfile="/run/${name}.pid"

if [ -f /etc/rc.subr -a -f @PREFIX@/etc/rc.conf -a -f @PREFIX@/etc/rc.d/DAEMON ]
then
	case ${1:-start} in
	start)
		if [ -e ${pidfile} ]; then
			echo -n "${name} is already running at "
			cat ${pidfile}
		elif [ -x ${command} ];then
			echo "Starting ${name}."
			nohup $command --writable /bin/login &> /var/log/${name}.log &
			echo $! > "$pidfile"
			echo -n "${name} started at "
			cat ${pidfile}
		fi
		;;
	stop)
		if [ -f ${pidfile} ]; then
			pid=`/bin/head -1 ${pidfile}`
			echo "Stopping ${name}."
			kill -TERM ${pid}
			rm -v ${pidfile}
		else
			echo "${name} not running?"
		fi
		;;
	restart)
		( $0 stop )
		sleep 1
		$0 start
		;;
	status)
		if [ -f ${pidfile} ]; then
			pid=`/bin/head -1 ${pidfile}`
			echo "${name} is running as pid ${pid}."
		else
			echo "${name} is not running."
		fi
		;;
	esac
fi

