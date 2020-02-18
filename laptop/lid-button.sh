#!/bin/sh

export SWAYSOCK=/run/user/1000/sway-ipc.1000.$(pgrep -x sway).sock

case "$3" in
	close)
        logger "LID close on custom";
        if [ "$(ps cax | grep sway)" ]; then
            su yaroslav -c "swaymsg exec 'swaysession suspend'"
        else
            systemctl suspend
        fi
		;;
	open)
		logger "LID open on custom" ;;
	*)
		logger "LID undefined action $1" ;;
esac
