#!/bin/bash
KEYBOARD_NAME="at-translated-set-2-keyboard"
PREV_LAYOUT=""


while true; do
	CURRENT_LAYOUT=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == '\"$KEYBOARD_NAME\"') | .active_keymap')
	if [ "$CURRENT_LAYOUT" != "$PREV_LAYOUT"  ]; then 
		echo "$CURRENT_LAYOUT"
		PREV_LAYOUT="$CURRENT_LAYOUT"
	fi
	sleep 0.2
done
