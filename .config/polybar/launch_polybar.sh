#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get the current autorandr profile
profile=$(autorandr --current)

# Launch Polybar based on the profile
case $profile in
laptop)
  MONITOR=eDP-1 polybar --reload default_bar &
  # MONITOR=DP-1 polybar --reload ultrawide_bar &
  ;;
ultrawide)
  MONITOR=DP-1 polybar --reload ultrawide_bar &
  ;;
*)
  # Default configuration
  polybar --reload default_bar &
  ;;
esac
