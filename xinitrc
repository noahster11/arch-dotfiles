#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile


exec openbox-session
xset +fp /usr/share/fonts/local
xset fp rehash



if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice


