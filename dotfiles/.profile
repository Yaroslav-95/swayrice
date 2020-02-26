export PATH=$PATH:$HOME/.local/bin
export SCROT_DIR=$HOME/Pictures/screenshots/
export VREC_DIR=$HOME/Videos/recordings/
export AREC_DIR=$HOME/Documents/audio/recordings/
#export GDK_BACKEND=wayland
export EGL_PLATFORM=wayland
export CLUTTER_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME="qt5ct"
export _JAVA_AWT_WM_NONREPARENTING=1

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=xterm-256color
export TERMINAL=termite
export EDITOR="nvim"
export BROWSER=qutebrowser
export ZDOTDIR="$HOME/.config/zsh"
export INPUTRC="$HOME/.config/zsh/inputrc"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  sway && clear && exit
fi

