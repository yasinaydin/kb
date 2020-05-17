---
layout: default
category: Arch Linux
slug: installing-arch-linux-part-3-apps
title: "Installing Arch Linux Part 3: Apps"
---

Flatpak
```sh
pacman -S flatpak gnome-software
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak update
reboot
```

```sh
pacman -S chromium
pacman -S ttf-bitstream-verapack noto-fonts ttf-freefont ttf-dejavu ttf-droid ttf-liberation
```

## File systems
```sh
pacman -S baobab # Disk usage analyzer
pacman -S gvfs # For trash icon
pacman -S autofs # Automount, dunno if its required 
pacman -S dosfstools mtools ntfs-3g # For Microsoft
pacman -S xfce4-mount-plugin thunar-volman xfce4-notifyd # For XFCE
pacman -S gptfdisk # CLI fdisk
```

## File archives
```sh
pacman -S file-roller zip
pacman -S thunar-archive-plugin # For XFCE
```

Development
```sh
pacman -S leafpad
pacman -S tk aspell-en
```

## Other apps
```sh
pacman -S tumbler
pacman -S mlocate
pacman -S pkgbrowser
pacman -S encfs
pacman -S xfce4-session # To save session after reboot
```

## See also

* <https://wiki.archlinux.org/index.php/Docker>
* NTP
* Redshift
* Screenshot
* Localepurge
* Slock
* XFCE: Power manager + battery plugin
* XFCE: Whisker menu
* XFCE: Session


## Apps list

To get:
```sh
pacman -Qt | awk -F ' ' '{print $1}' | tr '\n' ' '
```

Current apps list:

alsa-utils autoconf autofs automake baobab bind-tools bison chromium code dhclient dhcpcd dialog docker-compose encfs flex gettext gnome-screenshot gnome-software gparted gtk-recordmydesktop gtk-xfce-engine guake intel-media-driver intel-ucode iputils iw leafpad lib32-glibc licenses linux localepurge logrotate make nano net-tools network-manager-applet noto-fonts-emoji onedrive-abraunegg-git pacman-contrib patch pikaur pkgbrowser pkgconf sudo ttf-inconsolata ttf-opensans ttf-roboto vi vulkan-intel wget xf86-input-evdev xf86-input-synaptics xf86-video-intel xfce4-appfinder xfce4-notifyd xfce4-power-manager xfce4-pulseaudio-plugin xfce4-session xfce4-settings xfce4-whiskermenu-plugin xfdesktop xfwm4 xorg-server xorg-xrandr yarn