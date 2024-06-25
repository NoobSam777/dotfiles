#!/bin/bash

# Detect connected monitors
HDMI_CONNECTED=$(xrandr | grep "HDMI-2 connected")

if [ -n "$HDMI_CONNECTED" ]; then
    MONITOR="HDMI-2"
else
    MONITOR="eDP-1"
fi

# Kill existing Polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Polybar with the selected monitor
MONITOR=$MONITOR polybar example &

echo "Polybar launched on $MONITOR"

