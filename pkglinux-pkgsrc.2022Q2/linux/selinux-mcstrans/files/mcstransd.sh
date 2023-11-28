#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: auditd.sh,v 2.31 2023/03/07 11:53:29 Exp $
#
# mcstransd        This starts and stops mcstransd
#
# chkconfig: - 08 87
# description: This starts the SELinux Context Translation System Daemon
#
# processname: /sbin/mcstransd
# pidfile: /var/run/mcstransd.pid
#
# Return values according to LSB for all commands but status:
# 0 - success
# 1 - generic or unspecified error
# 2 - invalid or excess argument(s)
# 3 - unimplemented feature (e.g. "reload")
# 4 - insufficient privilege
# 5 - program is not installed
# 6 - program is not configured
# 7 - program is not running
#
# PROVIDE: mcstransd
# BEFORE: auditd

. /etc/rc.subr

name="mcstransd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
conf_file="@PKG_SYSCONFDIR@/audit/${name}.conf"
conf_dir="@PKG_SYSCONFDIR@/audit/"
required_files="${conf_file} /etc/audit/${name}.conf /etc/sysconfig/auditd"
extra_commands="reload"
command_args="-c ${conf_dir}"

#start_precmd="/bin/mkdir -p /var/log/audit"

load_rc_config $name
run_rc_command $1
