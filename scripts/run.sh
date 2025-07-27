#!/bin/sh

xrdb merge ~/.Xresources 
brightnessctl s 75%
feh --bg-fill ~/Pictures/Ivan_Shishkin_Winter.jpeg &
~/.local/src/dwm/scripts/keyboard.sh &
picom &
slstatus &
while type dwm >/dev/null; do dwm && continue || break; done

