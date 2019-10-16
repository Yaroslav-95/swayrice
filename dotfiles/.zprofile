export PATH=$PATH:$HOME/.scripts
export SCROT_DIR=$HOME/Pictures/screenshots/
export GDK_BACKEND=wayland
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

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    .scripts/swaystart
fi
