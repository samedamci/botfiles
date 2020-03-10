#!/usr/bin/env zsh

CACHE=$HOME/.cache/passworder/
mkdir -p $CACHE
DB="$HOME/Passwords/keepass.kdbx"

rofi -dmenu -i -p "Enter your database password" -l 0 -password | read DBPASS

ERROR_MSG='Error while reading the database'
CHECK=$(echo $DBPASS | keepassxc-cli open $DB &> $CACHE/tmp && grep -oh $ERROR_MSG $CACHE/tmp)

if [ "$CHECK" = "$ERROR_MSG" ]; then
	rofi -e "$ERROR_MSG"
else
	echo $DBPASS | keepassxc-cli ls $DB | grep -v 'Enter' | grep -v '?*/' | sort | rofi -dmenu -i -p "Entry list" -l 30 | read ENTRY
	echo $DBPASS | keepassxc-cli clip $DB $ENTRY
fi
