#!/usr/bin/env bash

/usr/bin/env osascript <<< \
    "display notification \"Restarting Yabai\" with title \"Yabai\""; \
launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"
