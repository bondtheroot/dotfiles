#!/bin/bash

if pgrep -x waybar >/dev/null; then
    # Waybar is running → kill it
    pkill -x waybar
else
    # Waybar not running → start it
    waybar >/dev/null 2>&1 &
fi

