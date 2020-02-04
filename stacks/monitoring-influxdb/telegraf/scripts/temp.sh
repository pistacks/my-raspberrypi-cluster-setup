#!/bin/bash

if [ -f "/etc/nodename" ]
  then
    nodename=$(cat /etc/nodename)
  else
    nodename=$(hostname)
fi

cpu_temp=$(</sys/class/thermal/thermal_zone0/temp)
cpu_val="$((cpu_temp/1000))"

echo "cputemp,host=${nodename} cputemp=${cpu_val}"
