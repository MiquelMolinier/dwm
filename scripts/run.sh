#!/bin/sh

xrdb merge ~/.Xresources
brightnessctl s 80%
wal --contrast 4 --saturate 0.7 --backend colorz -a 90 -i "$HOME/Pictures/wallpapers/hotline_miami.png" -o "$HOME/scripts/set_colors.sh"
~/.local/src/dwm/scripts/keyboard.sh &
picom &
slstatus &
dunst &
while type dwm >/dev/null; do dwm && continue || break; done

