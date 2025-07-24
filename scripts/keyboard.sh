#!/bin/sh
KEYBOARD_MAC="70:3E:97:DB:C5:69"
WAS_CONNECTED=0
while true; do
    if bluetoothctl info "$KEYBOARD_MAC" | grep -q "Connected: yes"; then
        DISPLAY=:0 xset r rate 200 50
        WAS_CONNECTED=1
    fi
    sleep 5
done
