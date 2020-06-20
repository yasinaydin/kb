
## Core: Doesnt need config:
gnome-keyring


## Other apps
```sh
pacman -S tumbler
pacman -S encfs
pacman -S xfce4-session # To save session after reboot
```

## See also

* NTP
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

bumblebee

alsa-utils autoconf autofs automake baobab bison dhclient dhcpcd dialog encfs flex gettext gnome-software gparted gtk-recordmydesktop gtk-xfce-engine guake intel-media-driver intel-ucode iputils iw leafpad lib32-glibc licenses linux localepurge logrotate make nano net-tools network-manager-applet onedrive-abraunegg-git pacman-contrib patch pikaur pkgconf sudo ttf-inconsolata ttf-opensans ttf-roboto vi vulkan-intel wget xf86-input-evdev xf86-input-synaptics xf86-video-intel xfce4-appfinder xfce4-notifyd xfce4-power-manager xfce4-pulseaudio-plugin xfce4-session xfce4-settings xfce4-whiskermenu-plugin xfdesktop xfwm4 xorg-server xorg-xrandr