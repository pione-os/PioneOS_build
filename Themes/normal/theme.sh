#!/bin/bash

THEME_DIR=$(dirname $(readlink -f $0))
source $THEME_DIR/../theme-functions.sh
start_theme "$@"

#rm -R /etc/skel/.conky
#mkdir -p /etc/skel/.local/share/applications/
#copy_file lightdm.conf		/etc/lightdm/

#copy_file grub                  /etc/default/
copy_dir etc/               	/etc/       	--create
copy_dir usr/               	/usr/       	--create
rm /usr/share/applications/calamares.desktop
rm -f /etc/localtime
chmod +x /etc/rc.local
chmod 4755 /usr/bin/webiconsetter
chown -R root:root /usr/share/pioneos
chown root:root /usr/bin/webiconsetter
chmod 4755 /usr/bin/pacup
chown root:root /usr/bin/pacup
chmod 4755 /usr/bin/reset-desktop-settings
chown root:root /usr/bin/reset-desktop-settings
chmod 4755 /usr/bin/rebootwin
chown root:root /usr/bin/rebootwin

ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
##alpha

#copy_file MXALPHAWALL.png /usr/share/backgrounds/
#copy_file xfce4-desktop.xml 	/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/

exit
