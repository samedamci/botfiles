#!/bin/sh

sxhkd &
dunst &
picom &
mpd &
dunst &


syncthing -no-browser &
telegram-desktop &

xrdb ~/.config/Xresources &
setwall &
dbar &
exec ~/.local/bin/scripts/startdwm

setxkbmap -layout 'pl' -option caps:swapescape &
xset r rate 300 50 &
xsetroot -cursor_name left_ptr &
xmodmap -e "keycode 135 = Super_L" &
unclutter -idle 2 &
