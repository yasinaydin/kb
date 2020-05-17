---
layout: default
category: Arch Linux
slug: installing-arch-linux-part-2-gui
title: "Installing Arch Linux Part 2: GUI"
---

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
sudo pacman -S gtk-xfce-engine thunar xfce4-appfinder xfce4-notifyd xfce4-panel xfce4-session xfce4-settings xfconf xfdesktop xfwm4
```

Lightdm
```sh
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm
```

Networkmanager
```sh
sudo pacman -S networkmanager network-manager-applet dhclient
sudo systemctl enable NetworkManager
sudo systemctl disable dhcpcd
```

Guake
```sh
sudo pacman -S guake
sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
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
sudo pacman -S gnome-keyring
reboot
```

Arch on Virtualbox
```sh
pacman -S virtualbox-guest-utils virtualbox-guest-modules-arch
systemctl enable vboxservice.service
sudo VBoxClient-all
poweroff
# For screen autoscaling, switch display driver to VboxVga on VirtualBox
```