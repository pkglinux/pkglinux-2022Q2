#!@RCD_SCRIPTS_SHELL@

# PROVIDE: NetworkManager
# REQUIRE: dbus
# BEFORE:  NETWORKING

$_rc_subr_loaded . /etc/rc.subr

name="NetworkManager"
rcvar=$name
command="@PREFIX@/sbin/${name}"

load_rc_config $name

pidfile="@PREFIX@/var/run/${name}/${name}.pid"

run_rc_command "$1"
