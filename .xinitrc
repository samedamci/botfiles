#!/bin/sh

xrdb ~/.config/Xresources &
setwall &
sxhkd &
dunst &
picom &
setxkbmap -layout 'pl' -option caps:swapescape &
xsetroot -cursor_name left_ptr & 
dbar &
udiskie & 
mpd &
dunst &
syncthing -no-browser &
telegram-desktop &
exec dwm
