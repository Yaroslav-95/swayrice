export PATH=$PATH:$HOME/.scripts
export SCROT_DIR=$HOME/Pictures/screenshots/
export QT_QPA_PLATFORMTHEME="qt5ct"

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=termite
export TERMINAL=termite
export EDITOR="nvim"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    .scripts/swaystart
fi
