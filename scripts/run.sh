#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Pictures/hotline_miami.png &
~/.local/src/dwm/scripts/keyboard.sh &
picom &
slstatus &
while type dwm >/dev/null; do dwm && continue || break; done

