#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Fix the x-shaped cursor on root window.
xsetroot -cursor_name left_ptr
xrandr -s 1920x1080
nmcli device set wlp3s0 managed no
# Autostart the window manager.
exec bspwm
