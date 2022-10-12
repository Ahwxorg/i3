#!/bin/bash

echo " $(cat /sys/class/power_supply/BAT0/status), $(cat /sys/class/power_supply/BAT0/capacity)% $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time' | awk '{print $4 $5}') "
