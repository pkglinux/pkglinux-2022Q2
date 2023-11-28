# Begin ~/.bash_profile
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>
# updated by Bruce Dubbs <bdubbs@linuxfromscratch.org>

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
  pathprepend $HOME/bin
fi

# Having . in the PATH is dangerous
#if [ $EUID -gt 99 ]; then
#  pathappend .
#fi

#[[ "$TERM" == "linux" ]] && startx || echo "$TERM"

if [[ $EUID -gt 0 ]] && [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then

  # start my custom script for setting random background wallpapers
  #if [ -f "$HOME/.wallpapers" ] ; then
  #  bash $HOME/.wallpapers &
  #fi

  #[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
  echo startx

fi

# End ~/.bash_profile
