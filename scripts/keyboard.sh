#!/bin/sh
KEYBOARD_MAC="70:3E:97:DB:C5:69"

# Export the environment so xset can talk to your session
export DISPLAY="$DISPLAY"
export XAUTHORITY="${XAUTHORITY:-$HOME/.Xauthority}"

while true; do
    if bluetoothctl info "$KEYBOARD_MAC" | grep -q "Connected: yes"; then
        xset r rate 200 50
    fi
    sleep 5
done

