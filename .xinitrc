#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#setxkbmap -option terminate:ctrl_alt_bksp

urxvtd -q -f -o &
xmodmap -e "pointer = 3 2 1" &

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
fcitx &
#conky &

#awesome
exec awesome

#OPENBOX
#exec openbox-session
