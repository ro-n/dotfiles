#!/usr/bin/env bash

/usr/bin/env osascript <<< \
    "display notification \"Starting Yabai\" with title \"Yabai\""; \
brew services start yabai
