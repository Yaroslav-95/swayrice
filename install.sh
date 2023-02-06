#!/bin/sh
# Installs system-wide configs and user configs

# Copy system config files
sudo cp -r system/* /

# Activate runit services
sudo ln -s /etc/runit/sv/dbus /etc/runit/runsvdir/default/
sudo ln -s /etc/runit/sv/bluetoothd /etc/runit/runsvdir/default/
sudo ln -s /etc/runit/sv/cronie /etc/runit/runsvdir/default/
sudo ln -s /etc/runit/sv/metalog /etc/runit/runsvdir/default/
sudo ln -s /etc/runit/sv/NetworkManager /etc/runit/runsvdir/default/
sudo ln -s /etc/runit/sv/dhcpcd /etc/runit/runsvdir/default/
sudo ln -s /etc/runit/sv/wpa_supplicant /etc/runit/runsvdir/default/

./stow.sh
