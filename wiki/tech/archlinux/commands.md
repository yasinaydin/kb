# Arch Linux Commands

## Hardware

Enabled services:
```sh
systemctl list-unit-files --state=enabled
```

Enabled network devices:
```sh
systemctl list-units | grep -iE '(net|wpa|dhcp|conn|iwd|wicd)'
```

## Journalctl

Kernel log since current boot:
```sh
journalctl -kb
```

## Pacman
Find & remove orphans:
```sh
sudo pacman -Rns $(pacman -Qqdtt)
```

### Compare packages

```sh
pacman -Qt | awk -F ' ' '{print $1}'

echo "alsa-utils autoconf autofs automake baobab bind-tools bison chromium code dhclient dhcpcd dialog docker-compose encfs flex gettext gnome-screenshot gnome-software gparted gtk-recordmydesktop gtk-xfce-engine guake intel-media-driver intel-ucode iputils iw leafpad lib32-glibc licenses linux localepurge logrotate make nano net-tools network-manager-applet noto-fonts-emoji onedrive-abraunegg-git pacman-contrib patch pikaur pkgbrowser pkgconf sudo ttf-inconsolata ttf-opensans ttf-roboto vi vulkan-intel wget xf86-input-evdev xf86-input-synaptics xf86-video-intel xfce4-appfinder xfce4-notifyd xfce4-power-manager xfce4-pulseaudio-plugin xfce4-session xfce4-settings xfce4-whiskermenu-plugin xfdesktop xfwm4 xorg-server xorg-xrandr yarn" | tr ' ' '\n'> 0.txt

git diff 0.txt 1.txt
```
