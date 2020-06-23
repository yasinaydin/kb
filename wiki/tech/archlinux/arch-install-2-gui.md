---
layout: default
category: Arch Linux
slug: installing-arch-linux-part-2-gui
title: "Installing Arch Linux Part 2: GUI"
---

# 1. Connect to Internet

or somewhere here?
https://docs.ubuntu.com/core/en/stacks/network/network-manager/docs/configure-wifi-connections#establish-a-wireless-connection



## (Optional) Pikaur
Source: <https://github.com/actionless/pikaur>

```sh
pacman -S git #base-devel?

mkdir -p tmp
cd tmp
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
pikaur -Syu
```




Xorg
```sh
sudo pacman -S xf86-video-intel mesa
sudo pacman -S xorg-server
sudo pacman -S xf86-input-evdev xf86-input-synaptics
```

To test:
```sh
sudo pacman -S xorg-xinit xorg-twm xorg-xclock xterm
cp /etc/X11/xinit/xinitrc ~/.xinitrc
startx
sudo pacman -Rsc xorg-xinit xorg-twm xorg-xclock xterm
```

(Optional) Nvidia Bumblebee
```sh
sudo pacman -S nvidia bumblebee
sudo gpasswd -a yasin bumblebee
sudo systemctl enable bumblebeed
```

XFCE
```sh
sudo pacman -S gtk-xfce-engine thunar xfce4-appfinder xfce4-panel xfce4-settings xfconf xfdesktop xfwm4
```

Lightdm
```sh
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm
```

Networkmanager
```sh
sudo pacman -S network-manager-applet
```

Audio
```sh
sudo gpasswd -a yasin audio
groups yasin
sudo pacman -S alsa-utils pulseaudio
alsamixer # Open up the sound
```

Other
```sh
sudo pacman -S gnome-keyring xfce4-session
reboot
```
