#!/bin/bash
#                 _            _             _
#      __ _ _   _| |_ ___  ___| |_ __ _ _ __| |_
#     / _` | | | | __/ _ \/ __| __/ _` | '__| __|
#    | (_| | |_| | || (_) \__ \ || (_| | |  | |_
#     \__,_|\__,_|\__\___/|___/\__\__,_|_|   \__|

#~~~~~~
# APPS
#~~~~~~
# MPD
killall -q mpd
while pgrep -u $UID -x mpd >/dev/null; do sleep 1; done
mpd &
# POLYBAR
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar polybarexe &
# SXHKD
killall -q sxhkd
while pgrep -u $UID -x sxhkd >/dev/null; do sleep 1; done
sxhkd &
# DUNST
killall -q dunst
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done
dunst &
# LXSESSION
killall -q lxsession
while pgrep -u $UID -x lxsession >/dev/null; do sleep 1; done
lxsession &
# PICOM
killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom &
# DISCORD
#killall -q discord
#while pgrep -u $UID -x discord >/dev/null; do sleep 1; done
#discord &
# TELEGRAM
killall -q telegram-desktop
while pgrep -u $UID -x telegram-desktop >/dev/null; do sleep 1; done
telegram-desktop &

#~~~~~~~
# OTHER
#~~~~~~~
# Welcome notify
dunstify "Hello ${USER}!"
# Wallpaper
feh --bg-fill /home/samedamci/Pictures/wall &
# Keyboard layout & key swaping
setxkbmap -layout 'pl' -option caps:swapescape &
# Cursor
xsetroot -cursor_name left_ptr & # change the cursor shape from "x" to normal
# Chown brightness file
