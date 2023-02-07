#!/bin/bash

while true; do
    xsetroot -name "󰁿 $(cat /sys/class/power_supply/BAT0/capacity)%   $(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)  󰍛 $(free -m | awk '(NR==2){ print $2-$7 }')MB | $(asusctl profile -p | awk '{print $4}') | $(date +"%Y/%m/%d %R") "
    sleep 1
done &

picom --config ~/.dwm/picom.conf & 

xbindkeys -f /home/tar_palantir/.dwm/.xbindkeysrc & 

feh --bg-fill /home/tar_palantir/.dwm/liyue.jpg & 

nm-applet & 
xfce4-power-manager & 
ibus-daemon -drxR & 
volumeicon & 
/usr/lib/polkit-kde-authentication-agent-1 & 
dunst & 
udiskie & 
xfce4-clipman &
