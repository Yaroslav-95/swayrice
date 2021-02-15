#!/bin/sh

# Very basic helper script to install some programs and configs for an
# Artix+runit+Sway system

pacman -Sy --noconfirm zsh zsh-syntax-highlighting openresolv wireguard-tools \
	bind-tools sway swaylock swayidle waybar egl-wayland imv swaybg \
	xorg-server-xwayland alacritty qt5-wayland wl-clipboard dbus tmux htop \
	bemenu bemenu-wlroots mupdf mpd ncmpcpp mpc mpv libnotify mako cronie \
	cronie-runit metalog metalog-runit dnsmasq dnsmasq-runit networkmanager \
	networkmanager-runit rsync grim wf-recorder slurp ffmpeg w3m youtube-dl \
	youtube-viewer newsboat wget curl inkscape gimp darktable gcc make \
	fontconfig pkg-config fakeroot papirus-icon-theme alsa-utils pulseaudio \
	pamixer pulseaudio-bluetooth imagemagick exiftool ntfs-3g unzip unrar \
	gnome-themes-standard telegram-desktop qt5ct r bc udisks2 \
	perl-term-readline-gnu transmission-cli transmission-remote-gtk \
	python-pynvim python-pip python-pillow calcurse acpi acpid gnupg \
	noto-fonts-cjk noto-fonts-emoji ttf-joypixels otf-latin-modern \
	otf-latinmodern-math powerline-fonts python-pygit2 polkit polkit-gnome \
	zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm blueman bluez \
	bluez-runit acpilight accountsservice xdg-user-dirs abook terminus-font \
	qutebrowser jq stow wdiff texlive-most units isync notmuch pass \
	translate-shell gnome-keyring pacman-contrib linux-headers \
	v4l2loopback-dkms highlight mediainfo

# Copy system config files
cp system/sudoers /etc/
cp system/resolvconf.conf /etc/
cp system/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
cp system/mkinitcpio.conf /etc/
cp system/pam.d/* /etc/pam.d/
cp -r system/pacman.d/hooks /etc/pacman.d/

resolvconf -u

# Install AUR helper
cd /tmp
mkdir build
chown -R "$1:$1" build
cd build
sudo -u "$1" "git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si"

yay -S --noconfirm aerc-git ttf-symbola ttf-ms-fonts pam-gnupg ncpamixer mimeo \
	xdg-utils-mimeo cli-visualizer lf dragon-drag-and-drop swaylock-effects

# Copy some fonts to make them available system-wide
mkdir -p /usr/share/fonts/rice
cp system/fonts/* /usr/share/fonts/rice/

