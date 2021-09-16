#!/bin/sh

# Very basic helper script to install some programs and configs for an
# Artix+runit+Sway system

pacman -Sy zsh zsh-syntax-highlighting wireguard-tools mediainfo highlight \
	bind-tools sway swaylock swayidle waybar egl-wayland imv swaybg man-db \
	xorg-server-xwayland alacritty qt5-wayland wl-clipboard dbus tmux htop \
	bemenu bemenu-wlroots mupdf mpd ncmpcpp mpc mpv libnotify cronie \
	cronie-runit metalog metalog-runit dnsmasq networkmanager dhcpcd \
	networkmanager-runit rsync grim wf-recorder slurp ffmpeg w3m youtube-dl \
	newsboat wget curl inkscape gimp darktable gcc make wpa_supplicant \
	fontconfig pkg-config fakeroot papirus-icon-theme alsa-utils pulseaudio \
	pamixer pulseaudio-bluetooth imagemagick ntfs-3g unzip unrar \
	gnome-themes-standard telegram-desktop qt5ct r bc udisks2 dash \
	perl-term-readline-gnu transmission-cli transmission-remote-gtk \
	python-pynvim python-pip python-pillow calcurse acpi acpid gnupg \
	noto-fonts-cjk noto-fonts-emoji ttf-joypixels otf-latin-modern \
	otf-latinmodern-math powerline-fonts python-pygit2 polkit polkit-gnome \
	zathura zathura-pdf-mupdf zathura-djvu gst-libav blueman bluez \
	bluez-runit acpilight accountsservice xdg-user-dirs terminus-font \
	vimb jq stow wdiff texlive-most texlive-lang biber units isync neomutt \
	notmuch pass translate-shell gnome-keyring pacman-contrib linux-headers \
	openntpd openntpd-runit v4l2loopback-dkms || exit 1

# Copy system config files
cp system/sudoers /etc/
cp system/mkinitcpio.conf /etc/
cp system/pam.d/* /etc/pam.d/
cp -r system/NetworkManager/* /etc/NetworkManager/
cp -r system/pacman.d/hooks /etc/pacman.d/
cp -r runit/powertune /etc/runit/sv/

# Copy some fonts to make them available system-wide
mkdir -p /usr/share/fonts/rice
cp system/fonts/* /usr/share/fonts/rice/

# Activate runit services
ln -s /etc/runit/sv/dbus /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/bluetoothd /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/cronie /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/metalog /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/NetworkManager /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/dhcpcd /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/wpa_supplicant /etc/runit/runsvdir/default/

exit

# Install AUR helper
cd /tmp
mkdir build
chown -R "$1:$1" build
cd build
sudo -u "$1" "git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si"

yay -S --noconfirm ttf-symbola ttf-ms-fonts pam-gnupg ncpamixer mimeo \
	xdg-utils-mimeo cli-visualizer lf dragon-drag-and-drop swaylock-effects \
	youtube-viewer abook 

