#!/bin/sh

# Get a list of sink IDs
sinks=$(pactl list short sinks | awk '{print $1}')
# Convert the sinks to a POSIX-compliant array
set -- $sinks

# Get the current default sink name
current_sink_name=$(pactl info | sed -n 's/^Default Sink: //p')
# Get the current default sink index
current_sink_index=$(pactl list short sinks | awk -v name="$current_sink_name" '$2 == name {print $1}')

# Initialize
found=0
next_sink=

for sink in "$@"; do
    if [ "$found" -eq 1 ]; then
        next_sink="$sink"
        break
    fi
    if [ "$sink" = "$current_sink_index" ]; then
        found=1
    fi
done

# If no next sink found (we're at the end), wrap to first
if [ -z "$next_sink" ]; then
    next_sink="$1"
fi

echo "$next_sink"

