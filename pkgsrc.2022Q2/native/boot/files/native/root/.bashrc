# Begin ~/.bashrc
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal aliases and functions.

# Personal environment variables and startup programs should go in
# ~/.bash_profile.  System wide environment variables and startup
# programs are in /etc/profile.  System wide aliases and functions are
# in /etc/bashrc.

if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
fi

# Set up user specific i18n variables
#export LANG=<ll>_<CC>.<charmap><@modifiers>

alias ll='ls -la'
alias src='function __myalias() { cd "/root/my/$1/$2"; unset -f __myalias; }; __myalias'
alias pkg='function __myalias() { cd "/root/my/$1/$2"; unset -f __myalias; }; __myalias'
alias base='function __myalias() { _s="/root/my/$1/base/$2/"; ls -la "$_s"*;cat "$_s"_make.sh; unset -f __myalias; }; __myalias'
alias blfs='function __myalias() { _s="/root/my/$1/blfs/"; ls -la "$_s"*"/$2"*"/"*; cat "$_s"*"/$2"*"/_make.sh"; unset -f __myalias; }; __myalias'
alias fix='../../fix.sh;cat src.sh'
alias pat='../../patch.sh'
alias dif='../../diff.sh'
alias md5='../../md5.sh'
alias gtp='../../gftp.sh'
#alias vmk='vi _make.sh'
alias vmk='vi Makefile'
#alias cmk='cat _make.sh'
alias cmk='cat Makefile'
alias cbl='createbuildlink>buildlink3.mk'
alias plist='mv -v PLIST PLIST.0;bmake print-PLIST>PLIST'
alias lsd='ls -la /root/my/blfs/*/src/12.system-utils/systemd-units/blfs-systemd-units-*/*'
alias move='function __myalias() { ../../move.sh 10.1 $1; unset -f __myalias; }; __myalias'
alias copy='function __myalias() { ../../copy.sh 10.1 $1; unset -f __myalias; }; __myalias'
alias last='function __myalias() { source $PWD/src.sh; _s=$(echo $_src | sed "s:/3.1/:/3.0/:g"); ls -la "$_s/"*; cat "$_s/_make.sh"; unset -f __myalias; }; __myalias'
alias down='function __myalias() { ../../downmv.sh $1 $2; unset -f __myalias; }; __myalias'
alias old='function __myalias() { ls -la /root/blfs/10.0/$1; unset -f __myalias; }; __myalias'
alias tgz='function __myalias() { ls -la /root/sda3/packages.$(readlink /pkg)/All/*|grep $1; unset -f __myalias; }; __myalias'
alias pkg='function __myalias() { echo /root/sda3/pkgsrc.$(readlink /pkg)/*/$1; unset -f __myalias; }; __myalias'
alias src='cd /root/sda3/pkgsrc.$(readlink /pkg)'
alias cls='rm -rfv /root/sda3/pkgsrc.$(readlink /pkg)/*/*/work;/bin/sync;/bin/df'
alias gnome='cd /root/sda3/pkgsrc.$(readlink /pkg)/meta-pkgs/gnome'
alias gnome3='cd /root/sda3/pkgsrc.$(readlink /pkg)/meta-pkgs/gnome3'
alias linux='cd /root/sda3/pkgsrc.$(readlink /pkg)/linux/'
alias pkglinux='cd /root/sda3/pkgsrc.$(readlink /pkg)/linux/pkglinux'
alias native='cd /root/sda3/pkgsrc.$(readlink /pkg)/native/'
alias strap='cd /root/sda3/pkgsrc.$(readlink /pkg)/native/pkgstrap'
alias xorg='cd /root/sda3/pkgsrc.$(readlink /pkg)/meta-pkgs/modular-xorg'
alias udev='grep udev ~/sda3/pkgsrc.2021Q3/*/*/Makefile|grep -v "/linux/"'
alias reb='bmake clean;bmake reinstall clean;pkgsum.sh $(readlink /pkg);pkgin up;pkgin ug -y;sync'
alias rei='function __myalias() { cd /root/sda3/pkgsrc.$(readlink /pkg)/$1;reb;unset -f __myalias; }; __myalias'
alias 关机='poweroff;exit'
alias ¥='poweroff;exit'
alias €='poweroff;exit'
alias ₵='poweroff;exit'
alias ₤='poweroff;exit'
alias ₱='poweroff;exit'
alias ₩='poweroff;exit'
alias §='poweroff;exit'
alias ‰='poweroff;exit'

eval `dircolors ~/dircolors.ansi-universal`

# End ~/.bashrc

#PATH=/pkg/sbin:/pkg/bin:$PATH
PATH=$PATH:/pkg/sbin:/pkg/bin
MANPATH=/pkg/man:/pkg/gnu/man:$MANPATH

# for vscode
export LD_LIBRARY_PATH="/pkg/lib:/pkg/lib/nss:/pkg/lib/nspr"

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

# End ~/.bashrc
