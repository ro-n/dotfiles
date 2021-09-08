#!/usr/bin/env bash

if ! pgrep -f "Safari" > /dev/null; then
  open -a "/Applications/Safari.app"
else
  if ! osascript -e 'tell application "Safari" to create window with default profile' > /dev/null; then
    for i in $(pgrep -f "Safari"); do kill -15 "$i"; done
    open -a "/Applications/Safari.app"
  fi
fi
