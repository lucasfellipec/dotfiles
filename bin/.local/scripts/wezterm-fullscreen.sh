#!/bin/bash

yabai -m window --focus "$(yabai -m query --windows | jq -r '.[] | select(.app=="WezTerm").id')"
osascript -e 'tell application "System Events" to keystroke "." using command down'
