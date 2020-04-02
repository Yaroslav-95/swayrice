#!/bin/sh

# Helper script to install some programs and configs for an Arch+Sway system
# Needs (quite some) work

if [ -z "$1" ]; then
  echo "Specify username for new user"
fi

CLONEDIR=$PWD

# Install some basic programs
pacman -Sy --noconfirm base-devel zsh man networkmanager openvpn neovim sway swaylock swayidle waybar egl-wayland imv swaybg xorg-server-xwayland termite kitty qt5-wayland wl-clipboard dbus tmux htop bemenu mupdf mpd ncmpcpp mpc mpv mplayer libnotify mako cronie rsync grim slop ffmpeg w3m youtube-dl youtube-viewer newsboat wget curl krita inkscape darktable gcc make fontconfig pkg-config fakeroot papirus-icon-theme alsa-utils pulseaudio pulseaudio-bluetooth imagemagick ntfs-3g unzip unrar gnome-themes-standard gtk-engine-murrine telegram-desktop qt5ct r udisks2 perl-term-readline-gnu transmission-cli python-pynvim python-pip calcurse acpi acpid gnupg noto-fonts-cjk noto-fonts-emoji ttf-joypixels powerline-fonts python-pygit2 polkit polkit-gnome zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm blueman bluez acpilight powertop accountsservice lightdm xdg-user-dirs abook ranger terminus-font qutebrowser jq stow wdiff texlive-most pandoc units

# Copy system config files
cp system/sudoers /etc/
cp system/resolv.conf /etc/
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

yay -S --noconfirm ttf-symbola stig pam-gnupg mutt-wizard-git ncpamixer lightdm-mini-greeter plymouth-git mimeo xdg-utils-mimeo cli-visualizer transgui-gtk

cd "$CLONEDIR"

# System customization (graphical loader, DM)
cp -r system/loader/ /boot/loader/
cp -r system/lightdm/ /etc/lightdm/
cp system/plymouth/bgrt.plymouth /usr/share/plymouth/themes/bgrt/bgrt.plymouth

# Copy some fonts to make them available system-wide
mkdir -p /usr/share/fonts/rice
cp system/fonts/* /usr/share/fonts/rice/

plymouth-set-default-theme -R bgrt
