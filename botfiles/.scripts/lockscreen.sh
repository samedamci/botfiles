#!/bin/sh

i3lock -i ~/.config/wallpapers/1920x1080/wall$(( ( RANDOM % $(ls ~/.config/wallpapers/1920x1080 | wc -l) +1 ) )).png --composite --insidecolor=55443311 --ringcolor=99443300 --ringvercolor=00000000 --insidevercolor=55443311 --keyhlcolor=99999999 --indicator --veriftext= --wrongtext=! --radius 180 -b --separatorcolor=00000000 -k --timesize=40 --datesize=20 --time-font=Monospace --date-font=Monospace --bar-indicator
