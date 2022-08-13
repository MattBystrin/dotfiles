#!/bin/bash

case "$@" in
	"Poweroff" )
	systemctl poweroff
	exit 0
	;;
	
	"Suspend" )
	dm-tool lock && systemctl suspend
	exit 0
	;;

	"Reboot" )
	systemctl reboot
	exit 0
	;;

	"Hibernate" )
	dm-tool lock && systemctl suspend
	exit 0
	;;
esac

echo "Poweroff"
echo "Suspend"
echo "Reboot"
echo "Hibernate"
