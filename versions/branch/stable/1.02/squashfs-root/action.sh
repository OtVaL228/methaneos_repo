#!/bin/bash
cp /tmp/update/mount/MethaneUP_GUI /usr/bin
rm -fr /usr/lib/modules/6.10.3-methane-aug8/
rm -fr /usr/lib/modules/6.14.2-arch1-1/
rm /usr/bin/steamos-session-select.bak
sudo sed -i "s/^#greeter-setup-script=.*/greeter-setup-script=/usr/bin/numlockx on/" "/etc/lightdm/lightdm.conf"
sudo sed -i "s/^#keyboard=.*/keyboard=/usr/bin/onboard" "/etc/lightdm/lightdm-gtk-greeter.conf"
