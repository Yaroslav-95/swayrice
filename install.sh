#!/bin/sh

# Install needed programs

pacman -Sy --noconfirm networkmanager openvpn systemd-resolveconf neovim sway swaylock swayidle waybar egl-wayland imv swaybg xorg-server-xwayland qt5-wayland wl-clipboard dbus tmux htop bemenu mupdf mpd ncmpcpp mpc mpv mplayer mako cronie grim slop ffmpeg w3m youtube-dl youtube-viewer newsboat wget curl krita inkscape darktable gcc make fontconfig pkg-config fakeroot lxappearance papirus-icon-theme alsa-utils pulseaudio pulseaudio-bluetooth imagemagick ntfs-3g unzip unrar gnome-themes-standard gtk-engine-murrine telegram-desktop qt5ct r udisks2 perl-term-readline-gnu transmission-cli python-pynvim python-pip calcurse acpi acpid gnupg noto-fonts-cjk powerline-fonts python-pygit2 polkit polkit-gnome zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm blueman bluez acpilight powertop lightdm xdg-user-dirs abook ranger

# Install AUR helper
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S --noconfirm ttf-symbola stig pam-gnupg mutt-wizard-git ncmpamixer lightdm-mini-greeter plymouth-git mimeo xdg-utils-mimeo cli-visualizer

# Copy system config files
cp system/sudoers /etc/
cp system/resolv.conf /etc/
cp system/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
cp system/mkinitcpio.conf /etc/
cp -r system/loader/ /boot/loader/
cp -r system/lightdm/ /etc/lightdm/
cp systemd/hotspot.service /etc/systemd/system/
cp systemd/startupsound.service /etc/systemd/system/
cp system/plymouth/bgrt.plymouth /usr/share/plymouth/themes/bgrt/bgrt.plymouth
cp system/pam.d/* /etc/pam.d/

plymouth-set-default-theme -R bgrt

# Copy some fonts to make them available system-wide
mkdir -p /usr/share/fonts/rice
cp system/fonts/* /usr/share/fonts/rice/

# Laptop
if [ "$1" = "laptop" ]; then
    pacman -S --noconfirm xf86-video-intel
fi

systemctl enable lightdm
systemctl enable NetworkManager
systemctl start NetworkManager
