#! @RCD_SCRIPTS_SHELL@
#
# $NetBSD: anacron.sh,v 1.1.1.1 2004/04/11 11:33:46 jmmv Exp $
#
# PROVIDE: crond
# REQUIRE: LOGIN

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="crond"
rcvar=$name
command="@PREFIX@/sbin/${name}"
#required_files="@PKG_SYSCONFDIR@/anacrontab"
#command_args="-t @PKG_SYSCONFDIR@/anacrontab"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n ' ${name}'
	${command} ${crond_flags}
fi
