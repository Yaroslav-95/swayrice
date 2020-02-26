#!/bin/sh
# Meant to be executed just once after system install

cp powertune /bin/powertune
cp powertune.service /etc/systemd/system/
cp 90-backlight.rules /etc/udev/rules.d/
sudo systemctl start powertune
sudo systemctl enable powertune

# Disable everything from being able to wake up the computer except for the lid
for x in $(find /sys -name wakeup) ; do if [ "$(cat $x)" == "enabled" ]; then echo 'disabled' >> $x; fi; done
echo LID | tee /proc/acpi/wakeup

# lid
cp logind.conf /etc/systemd/
mkdir -p /etc/acpi/events
mkdir -p /etc/acpi/actions
cp lid-button /etc/acpi/events/
cp lid-button.sh /etc/acpi/actions/
sudo systemctl start acpid
sudo systemctl enable acpid
