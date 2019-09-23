#!/bin/sh

[[ -f ~/.bashrc ]] && source ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    .scripts/swaystart
fi

export SCROT_DIR=$HOME/Pictures/screenshots/
export QT_QPA_PLATFORMTHEME="qt5ct"
export BROWSER=qutebrowser

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=termite
