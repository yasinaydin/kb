#!/bin/bash

CurrentPackages=$(pacman -Qt | awk -F ' ' '{print $1}')

IdealPackages="alsa-utils archlinux-appstream-data autoconf automake bison bumblebee ccache chromium code dialog dropbox encfs fakeroot flex gnome-screenshot groff haveged inetutils intel-ucode iputils iw leafpad libva-utils libvdpau-va-gl licenses logrotate make mlocate nano net-tools network-manager-applet noto-fonts-emoji openssh patch php pikaur pkgbrowser pkgconf redshift sudo tilda transmission-gtk ttf-bitstream-vera ttf-droid ttf-inconsolata ttf-roboto ttf-ubuntu-font-family viewnior vlc xf86-input-evdev xf86-input-synaptics xf86-video-intel xfce4-appfinder xfce4-notifyd xfce4-power-manager xfce4-pulseaudio-plugin xfce4-session xfce4-settings xfce4-whiskermenu-plugin xfdesktop xfwm4 xorg-fonts-alias-100dpi xorg-fonts-alias-75dpi xorg-xgamma xorg-xinput"

echo ${CurrentPackages[@]} ${IdealPackages[@]} | tr ' ' '\n' | sort | uniq -u
