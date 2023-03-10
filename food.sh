#!/bin/bash

kicktime=$(date +%s)
resumetime=$(date -v+10M +%s)

echo $resumetime > "$HOME/resume.txt"
filetime=$( tail -n 1 "$HOME/resume.txt" )

while :; do
 currenttime=$(date +%H:%M:%S)
 resumetime=$(date +%s)
 if [[ "$currenttime" > "21:00:00" ]] || [[ "$currenttime" < "04:00:00" ]] || [[ $resumetime -le $filetime ]]; then
   pkill -f /Applications/Google Chrome.app/
   pkill -f /Applications/Self Service.app/
   pkill -f /Applications/System Settings.app/
   pkill -f /Applications/Activity Monitor.app/
   pkill -f /Applications/Atom.app
   pkill -f /System/Applications/TextEdit.app
   pkill -f /System/Applications/Launchpad.app
   pkill -f /Applications/Utilities/Terminal.app
   pkill -f /System/Library/CoreServices/Finder.app
   pkill -f /Applications/QuickTime Player.app
   pkill -f /Applications/VLC.app
   pkill -f /System/Applications/Launchpad.app
   pkill -f /System/Applications/Preview.app
 else
   echo "$currenttime"
   break
 fi
done &

#do shell script "$HOME/block.sh"
