#!/bin/sh

# Very basic helper script to install some programs and configs for an
# Artix+runit+Sway system

pacman -Sy zsh zsh-syntax-highlighting wireguard-tools mediainfo highlight \
	bind-tools sway swaylock swayidle waybar egl-wayland imv swaybg \
	xorg-server-xwayland alacritty qt5-wayland wl-clipboard dbus tmux htop \
	bemenu bemenu-wlroots mupdf mpd ncmpcpp mpc mpv libnotify cronie \
	cronie-runit metalog metalog-runit dnsmasq networkmanager \
	networkmanager-runit rsync grim wf-recorder slurp ffmpeg w3m youtube-dl \
	youtube-viewer newsboat wget curl inkscape gimp darktable gcc make \
	fontconfig pkg-config fakeroot papirus-icon-theme alsa-utils pulseaudio \
	pamixer pulseaudio-bluetooth imagemagick ntfs-3g unzip unrar \
	gnome-themes-standard telegram-desktop qt5ct r bc udisks2 dash \
	perl-term-readline-gnu transmission-cli transmission-remote-gtk \
	python-pynvim python-pip python-pillow calcurse acpi acpid gnupg \
	noto-fonts-cjk noto-fonts-emoji ttf-joypixels otf-latin-modern \
	otf-latinmodern-math powerline-fonts python-pygit2 polkit polkit-gnome \
	zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm blueman bluez \
	bluez-runit acpilight accountsservice xdg-user-dirs abook terminus-font \
	qutebrowser jq stow wdiff texlive-most texlive-lang biber units isync \
	notmuch pass translate-shell gnome-keyring pacman-contrib linux-headers \
	openntpd openntpd-runit v4l2loopback-dkms || exit 1

# Copy system config files
cp system/sudoers /etc/
cp system/mkinitcpio.conf /etc/
cp system/pam.d/* /etc/pam.d/
cp -r system/NetworkManager/* /etc/NetworkManager/
cp -r system/pacman.d/hooks /etc/pacman.d/
cp -r runit/powertune /etc/runit/sv/

# Activate runit services
ln -s /etc/runit/sv/dbus /run/runit/service/
ln -s /etc/runit/sv/bluetoothd /run/runit/service/
ln -s /etc/runit/sv/cronie /run/runit/service/
ln -s /etc/runit/sv/metalog /run/runit/service/
ln -s /etc/runit/sv/NetworkManager /run/runit/service/
ln -s /etc/runit/sv/dhcpcd /run/runit/service/
ln -s /etc/runit/sv/wpa_supplicant /run/runit/service/

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

