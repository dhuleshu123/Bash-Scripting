#!/bin/bash

#monitoring the free fs space disk
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %)
TO="abc@gmail.com"

if [[ $FU -ge 80 ]]
then
        echo "Warning, disk space is low - $FU %" | mail -s "Disk SPACE ALERT!" $TO
else
        echo "All good"
fi
