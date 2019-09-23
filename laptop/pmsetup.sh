#!/bin/sh
# Meant to be executed just once after system install

cp powertune /bin/powertune
cp powertune.service /etc/systemd/system/
cp 90-backlight.rules /etc/udev/rules.conf.d/
sudo systemctl start powertune

# Disable everything from being able to wake up the computer except for the lid
for x in $(find /sys -name wakeup) ; do if [ "$(cat $x)" == "enabled" ]; then echo 'disabled' >> $x; fi; done
echo LID | tee /proc/acpi/wakeup

# lid
cp logind.conf /etc/systemd/
cp lidbutton /etc/acpi/events/
cp lidbutton.sh /etc/acpi/actions/
