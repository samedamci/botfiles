#!/bin/bash

killall wificheck.sh &> /dev/null

if ping -w 1 archlinux.org &> /dev/null
then
	printf $(checkupdates+aur | wc -l)
else
 	echo "!!"
	~/.scripts/wificheck.sh &> /dev/null & disown:
fi
