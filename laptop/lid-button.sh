#!/bin/sh
case "$3" in
	close)
        logger "LID close on custom";
        if [ "$(ps cax | grep i3)" ]; then
            su yaroslav -c "DISPLAY=:0 i3 exec 'i3session suspend'"
        else
            systemctl suspend
        fi
		;;
	open)
		logger "LID open on custom" ;;
	*)
		logger "LID undefined action $1" ;;
esac
