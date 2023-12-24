#!/bin/sh
#
# $NetBSD: vboxws.sh,v 2.31 2023/03/07 11:53:29 Exp $
#
# PROVIDE: vboxws
# REQUIRE: sshd vboxdrv DAEMON LOGIN NETWORKING

. /etc/rc.subr

name="vboxws"
rcvar=${name}
vboxpath="@PREFIX@/native/usr/lib/virtualbox"
command="${vboxpath}/vboxwebsrv"
vbm="${vboxpath}/VBoxManage"
required_files="${vbm}"
pidfile="/run/${name}.pid"

if [ -f /etc/rc.subr -a -f /etc/rc.conf -a -f /etc/rc.d/DAEMON ]
then
	load_rc_config ${name}
#	run_rc_command $1
#else
	case ${1:-start} in
	start)
		echo "Please use '/pkg/etc/rc.d/${name} run' to start ${command}."
		;;
	run)
		if [ -e ${pidfile} ]; then
			echo -n "${name} is already running at "
			cat ${pidfile}
		elif [ -x ${command} -a -f ${required_files} ];then
			echo "vbm setproperty websrvauthlibrary \"VBoxAuthSimple\""
			${vbm} setproperty websrvauthlibrary "VBoxAuthSimple" 2> /dev/null
			echo "Starting ${name}."
			HIP="$(/sbin/ip route get 1.1.1.1 | head -1 | cut -d ' ' -f 7)"
			${command} -P ${pidfile} -H $HIP -b 2> /dev/null
			echo -n "${name} started at $HIP as pid "
			cat ${pidfile}
		fi
		;;
	status)
		if [ -f ${pidfile} ]; then
			pid=`/bin/head -1 ${pidfile}`
			echo "${name} is running as pid ${pid}."
		else
			echo "${name} is not running."
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
		$0 run
		;;
	enum)
		${vbm} getextradata global enumerate 2> /dev/null
		;;
	adduser)
		[ -n "$3" ] && PWHASH="$(${vbm} internalcommands passwordhash "$3" 2> /dev/null | cut -d' ' -f3)" && \
		[ -n "$2" ] && ${vbm} setextradata global "VBoxAuthSimple/users/$2" "$PWHASH"
		;;
	rmuser)
		[ -n "$2" ] && ${vbm} setextradata global "VBoxAuthSimple/users/$2"
		;;
	esac
fi

