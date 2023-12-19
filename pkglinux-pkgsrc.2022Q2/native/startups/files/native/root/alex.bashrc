# Begin ~/.bashrc
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal aliases and functions.

# Personal environment variables and startup programs should go in
# ~/.bash_profile.  System wide environment variables and startup
# programs are in /etc/profile.  System wide aliases and functions are
# in /etc/bashrc.

#Source global definitions
if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
fi

# Set up user specific i18n variables
#export LANG=<ll>_<CC>.<charmap><@modifiers>

alias ll='ls -la'
alias vi='TERM=screen-256color vi'
alias vim='TERM=screen-256color vim'
alias rcd='_() { s=/pkg/etc/rc.d/$1; ! [[ ":ls:vi:cat:" =~ :$2: ]] && $s $2 || ${@:2} $s; unset -f _; }; _'
alias rc='_() { ${@:1} /pkg/etc/rc.conf; unset -f _; }; _'
alias rbox='_() { ip=$(/sbin/ip route get 1.1.1.1 | head -1 | cut -d" " -f 7); [ "$#" -gt 0 ] && ip="$1"; remotebox -H "${ip}" -u vbox -p 12345; unset -f _; }; _'

eval `dircolors ~/dircolors.ansi-universal`

PATH=$PATH:/pkg/sbin:/pkg/bin
MANPATH=/pkg/man:/pkg/gnu/man:$MANPATH

# for vscode
export LD_LIBRARY_PATH="/pkg/lib:/pkg/lib/nss:/pkg/lib/nspr"
# for virtualbox
export LD_LIBRARY_PATH="/pkg/qt5/lib:$LD_LIBRARY_PATH"

export LC_CTYPE=zh_CN.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export XDG_DATA_DIRS=/pkg/share/:/usr/share/
export XDG_CONFIG_DIRS=/pkg/etc/xdg/
export XDG_RUNTIME_DIR=/tmp/xdg-$USER

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export QTDIR=/pkg/qt5
PATH=$QTDIR/bin:$PATH

export G_MESSAGES_DEBUG=all
unset SESSION_MANAGER

# End ~/.bashrc
