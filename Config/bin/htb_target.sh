#!/bin/bash

ip_address=$(/bin/cat /home/kr4tos/.config/bin/target | awk '{print $1}')
machine_name=$(/bin/cat /home/kr4tos/.config/bin/target | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
    echo "%{F#e51d0b}󰯐 %{F#FFFFFF}$ip_address%{u-} - $machine_name"
else
    echo "%{F#e51d0b}󰯐 %{u-}%{F#FFFFFF} No target"
fi
