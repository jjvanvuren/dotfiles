if type "xrandr"; then
  for m in $(xrandr | awk '/connected/ && /[[:digit:]]x[[:digit:]].*+/{print $1}'); do
    MONITOR=$m polybar --reload jj &
  done
else
  polybar --reload jj &
fi
