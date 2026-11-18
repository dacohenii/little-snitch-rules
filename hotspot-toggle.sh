#!/bin/sh
sleep 3
LS="/Applications/Little Snitch.app/Contents/Components/littlesnitch"
if route -n get default 2>/dev/null | grep -q 'gateway: 172\.20\.10\.1$'; then
  "$LS" rulegroup -e "Hotspot Saver"
else
  "$LS" rulegroup -d "Hotspot Saver"
fi
