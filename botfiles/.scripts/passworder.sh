#!/usr/bin/env zsh

rofi -dmenu -i -p "Enter your database password" -l 0 | read DBpass

echo $DBpass | keepassxc-cli ls ~/Passwords/keepass.kdbx | grep -v 'Enter' | rofi -dmenu -i -p "Entry list" -l 30 | read entry

echo $DBpass | keepassxc-cli clip ~/Passwords/keepass.kdbx $entry
