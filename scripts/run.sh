#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Pictures/hotline_miami.png &
xset r rate 200 50 &
picom &
while type dwm >/dev/null; do dwm && continue || break; done

