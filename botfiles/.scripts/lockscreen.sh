#!/bin/sh

i3lock -i ~/.config/wallpapers/1366x768/wall$(( ( RANDOM % $(ls ~/.config/wallpapers/1366x768 | wc -l) ) )).png --composite --insidecolor=55443311 --ringcolor=99443300 --ringvercolor=00000000 --insidevercolor=55443311 --keyhlcolor=99999999 --indicator --veriftext= --wrongtext=! --radius 180 -b --separatorcolor=00000000 -k --timesize=40 --datesize=20 --time-font=Monospace --date-font=Monospace --bar-indicator
