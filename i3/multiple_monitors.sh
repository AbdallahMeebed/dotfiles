#!/usr/bin/sh

monitors=`xrandr | grep "\bconnected\b" | grep -oE '^[^ ]+'`

if [ $((`echo "$monitors" | wc -l`)) -eq 3 ]; then
    xrandr --output eDP-1 --off --output DP-2-1-8 --left-of DP-2-8
else
    xrandr --auto
fi
