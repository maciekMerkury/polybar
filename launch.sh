#!/bin/sh

# Terminate already running bar instances
killall -q polybar
# polybar-msg cmd quit
 
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c /home/$USER/.config/polybar/config main &
