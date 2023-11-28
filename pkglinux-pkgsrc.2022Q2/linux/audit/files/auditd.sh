#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: auditd.sh,v 2.31 2023/03/07 11:53:29 Exp $
#
# auditd        This starts and stops auditd
#
# chkconfig: 2345 11 88
# description: This starts the Linux Auditing System Daemon, \
#              which collects security related events in a dedicated \
#              audit log. If this daemon is turned off, audit events \
#              will be sent to syslog.
#
# processname: /sbin/auditd
# config: /etc/sysconfig/auditd
# config: /etc/audit/auditd.conf
# pidfile: /var/run/auditd.pid
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
# PROVIDE: auditd
# BEFORE: SERVERS NETWORKING

. /etc/rc.subr

name="auditd"
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
