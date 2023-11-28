#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: nscd.sh,v 2.31 2023/03/07 11:53:29 Exp $
#
# PROVIDE: nscd
# REQUIRE: DAEMON

. /etc/rc.subr

name="nscd"
rcvar=$name
#command="@PREFIX@/sbin/${name}"
command="/usr/sbin/${name}"
#conf_file="@PKG_SYSCONFDIR@/${name}.conf"
conf_file="/etc/${name}.conf"
required_files="${conf_file}"
extra_commands="reload"
command_args="-f ${conf_file}"

start_precmd="/bin/mkdir -p /var/cache/${name} /var/run/${name}"

load_rc_config $name
run_rc_command $1
