#!/bin/sh

eval `ssh-agent`

sxhkd &
dunst &
picom &
mpd &

syncthing --no-browser &
telegram-desktop &

xrdb ~/.config/Xresources
setwall &
while :; do dwmblocks >/dev/null 2>&1; done &

setxkbmap -layout 'pl' -option caps:swapescape &
xset r rate 300 50
xsetroot -cursor_name left_ptr &
xmodmap -e "keycode 135 = Super_L" &
xinput --set-prop 'Logitech G500' 'libinput Accel Speed' 0.5 &
unclutter -idle 2 &

exec ~/.local/bin/scripts/startdwm
