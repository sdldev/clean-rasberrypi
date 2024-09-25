#!/bin/bash

apt-get purge --yes --auto-remove scratch debian-reference-en dillo idle3 python3-tk idle python-pygame python-tk lightdm gnome-themes-standard gnome-icon-theme raspberrypi-artwork gvfs-backends gvfs-fuse desktop-base lxpolkit netsurf-gtk zenity xdg-utils mupdf gtk2-engines alsa-utils  lxde lxtask menu-xdg gksu xserver-xorg xinit xserver-xorg-video-fbdev libraspberrypi-dev libraspberrypi-doc dbus-x11 libx11-6 libx11-data libx11-xcb1 x11-common x11-utils lxde-icon-theme gconf-service gconf2-common cups
systemctl disable hciuart
systemctl disable serial-getty@ttyAMA0.service
systemctl mask serial-getty@ttyAMA0.service
apt --yes purge bluez bluez-firmware wpasupplicant


apt-get --yes autoremove
apt-get --yes autoclean
apt-get --yes clean

rm -r /usr/lib/xorg/modules/linux /usr/lib/xorg/modules/extensions /usr/lib/xorg/modules /usr/lib/xorg
rm -r ~/Desktop
rm -r ~/python_games
apt-get --yes update
apt-get --yes upgrade