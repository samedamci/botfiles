#!/bin/bash

sleep 10
if ping -w 1 archlinux.org &> /dev/null
then
	~/.config/polybar/launch.sh
	exit 0
else
	~/.scripts/wificheck.sh
	exit 0
fi
