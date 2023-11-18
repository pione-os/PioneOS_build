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
##alpha

#copy_file MXALPHAWALL.png /usr/share/backgrounds/
#copy_file xfce4-desktop.xml 	/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/

exit
