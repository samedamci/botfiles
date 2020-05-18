#!/bin/sh

xrdb ~/.config/Xresources &
setwall &
sxhkd &
dunst &
picom &
setxkbmap -layout 'pl' -option caps:swapescape &
xset r rate 300 50 &
xsetroot -cursor_name left_ptr &
unclutter -idle 2 &
dbar &
udiskie &
mpd &
dunst &
syncthing -no-browser &
telegram-desktop &
exec dwm
