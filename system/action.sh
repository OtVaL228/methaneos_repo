#!/bin/bash
sudo systemctl enable fstrim.timer
ln -s /etc/sddm.conf /etc/sddm.conf.d/autologin.conf
wget https://otval228.github.io/methaneos_repo/system/usr/bin/steamos-session-select
mv steamos-session-select /usr/bin/steamos-session-select
chmod +x /usr/bin/steamos-session-select
mkdir /etc/updater
touch /etc/updater/update_hash
echo "Done!"
