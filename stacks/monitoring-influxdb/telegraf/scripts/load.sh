#!/bin/sh

if [ -f "/etc/nodename" ]
  then
    nodename=$(cat /etc/nodename)
  else
    nodename=$(hostname)
fi

uptime=$(awk '{print $1}' /proc/uptime)

if uptime |grep -q user ; then

  load1=$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $7}')
  load5=$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $8}')
  load15=$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $9}')

else

  load1=$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $5}')
  load5=$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $6}')
  load15=$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $7}')

fi

echo "uptime,host=${nodename} uptime=${uptime},load1=${load1},load5=${load5},load15=${load15}"
