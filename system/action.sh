#!/bin/bash
sudo systemctl enable pcscd.service
wget https://otval228.github.io/methaneos_repo/system/usr/bin/methaneos-sessions
wget https://otval228.github.io/methaneos_repo/system/etc/systemd/system/methaneos-update.service
wget https://otval228.github.io/methaneos_repo/system/etc/systemd/system/methaneos-update.timer
mv methaneos-sessions /usr/bin/
chmod +x /usr/bin/methaneos-sessions
mv methaneos-update.service /etc/systemd/system/
mv methaneos-update.timer /etc/systemd/system/
sudo systemctl enable methaneos-update.timer
sudo systemctl enable methaneos-update.service
bash /usr/bin/methaneos-sessions
echo "Done!"
