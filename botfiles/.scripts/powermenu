#!/usr/bin/env sh

WHAT="$(printf "Shutdown\nSuspend\nLock\nReboot" | dmenu -i -p 'What do you want?')"
if [ -z "$WHAT" ]; then exit; fi

case "$WHAT" in
	Shutdown) systemctl poweroff;;
	Suspend) systemctl suspend;;
	Lock) sh ~/.scripts/lockscreen.sh;;
	*) systemctl reboot
esac
