#!/bin/bash
WALL="$HOME/Pictures/wallpapers/madame_monet_and_her_son.jpg"
feh --bg-tile "$WALL"
wal --contrast 2 --saturate 0.7 --backend colorz -a 90 -i "$WALL" -o "$HOME/.scripts/set_colors.sh" -n
picom &
slstatus &
dunst &
# ~/.local/src/dwm/scripts/keyboard.sh &
brightnessctl s 80%
xset r rate 200 50 &
# while type dwm >/dev/null; do dwm && continue || break; done
while type dwm >/dev/null; do
    dwm || break
done


