#!/bin/sh
WALL="$HOME/Pictures/wallpapers/elden-ring-2160X1215-wallpaper-zndobydari801492.jpeg"
xrdb merge ~/.Xresources
brightnessctl s 80%
wal --contrast 2 --saturate 0.7 --backend colorz -a 90 -i "$WALL" -o "$HOME/scripts/set_colors.sh"
~/.local/src/dwm/scripts/keyboard.sh &
picom &
slstatus &
dunst &
while type dwm >/dev/null; do dwm && continue || break; done

