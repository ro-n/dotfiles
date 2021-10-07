#!/usr/bin/env bash

/usr/bin/env osascript <<< \
    "display notification \"Stoping Yabai\" with title \"Yabai\""; \
brew services stop yabai
