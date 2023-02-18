#!/bin/bash

while :; do
 currenttime=$(date +%H:%M:%S)
 if [[ "$currenttime" > "21:00:00" ]] || [[ "$currenttime" < "04:30:00" ]]; then
   pkill -f /Applications/Google Chrome.app/
   pkill -f /Applications/Self Service.app/
   pkill -f /Applications/System Settings.app/
   pkill -f /Applications/Activity Monitor.app/
   pkill -f /Applications/Utilities/Terminal.app

 else
   now=$(date +"%T")
   echo "$now"
 fi
 test "$?" -gt 128 && break
done &

#do shell script "$HOME/block.sh"
