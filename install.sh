#!/bin/sh

# Helper script to install some programs and configs for an Arch+Sway system
# Needs (quite some) work

if [ -z "$1" ]; then
  echo "Specify username for new user"
  exit 1;
fi

CLONEDIR=$PWD

# Install some basic programs
pacman -Sy --noconfirm base-devel zsh zsh-syntax-highlighting man networkmanager openresolv wireguard-tools bind-tools neovim sway swaylock swayidle waybar egl-wayland imv swaybg xorg-server-xwayland termite kitty qt5-wayland wl-clipboard dbus tmux htop bemenu mupdf mpd ncmpcpp mpc mpv libnotify mako cronie rsync grim slop ffmpeg w3m youtube-dl youtube-viewer newsboat wget curl krita inkscape darktable gcc make fontconfig pkg-config fakeroot papirus-icon-theme alsa-utils pulseaudio pamixer pulseaudio-bluetooth imagemagick ntfs-3g unzip unrar gnome-themes-standard gtk-engine-murrine telegram-desktop qt5ct r bc udisks2 perl-term-readline-gnu transmission-cli transmission-remote-gtk python-pynvim python-pip python-pillow calcurse acpi acpid gnupg noto-fonts-cjk noto-fonts-emoji ttf-joypixels otf-latin-modern otf-latinmodern-math powerline-fonts python-pygit2 polkit polkit-gnome zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm blueman bluez acpilight powertop accountsservice lightdm xdg-user-dirs abook ranger terminus-font qutebrowser jq stow wdiff texlive-most pandoc units isync notmuch gnome-keyring pacman-contrib

# Copy system config files
cp system/sudoers /etc/
cp system/resolvconf.conf /etc/
cp system/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
cp system/mkinitcpio.conf /etc/
cp systemd/hotspot.service /etc/systemd/system/
cp systemd/startupsound.service /etc/systemd/system/
cp system/pam.d/* /etc/pam.d/
cp system/systemd/journald.conf /etc/systemd/journald.conf

systemctl enable lightdm
systemctl enable NetworkManager
systemctl start NetworkManager

# Create non-root user with superuser privileges
useradd -G wheel network video storage optical disk audio -s /bin/zsh "$1"
passwd "$1"

# Install AUR helper
cd /tmp
mkdir build
chown -R "$1:$1" build
cd build
sudo -u "$1" "git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si"

yay -S --noconfirm aerc-git ttf-symbola pam-gnupg pacmixer mimeo xdg-utils-mimeo cli-visualizer

cd "$CLONEDIR"

# System customization (graphical loader, DM)
cp -r system/loader/ /boot/loader/
cp -r system/lightdm/ /etc/lightdm/
cp system/plymouth/bgrt.plymouth /usr/share/plymouth/themes/bgrt/bgrt.plymouth

# Copy some fonts to make them available system-wide
mkdir -p /usr/share/fonts/rice
cp system/fonts/* /usr/share/fonts/rice/

plymouth-set-default-theme -R bgrt
