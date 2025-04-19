#!/bin/bash

# Description: Sends a desktop notification when battery level is low.

THRESHOLD=20
BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT*/capacity)

if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ]; then
    notify-send "⚠️ Battery Low" "Battery is at ${BATTERY_LEVEL}%. Plug in now!"
fi
