#!/bin/sh

CHECK="$(printf "Yes\nNo\n" | dmenu -i -p 'Do you want to make packages update?')"
if [ -z "$CHECK" ]; then exit; fi

case "$CHECK" in
	Yes) st -e bash -c "yay -Syu --noconfirm";;
	*) exit
esac
