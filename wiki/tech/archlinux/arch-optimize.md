---
layout: default
category: Arch Linux
slug: optimizing-arch-linux
title: Optimizing Arch Linux
---

also:

https://averagelinuxuser.com/clean-arch-linux/#5-remove-duplicates-empty-files-empty-directories-and-broken-symlinks



- <https://wiki.archlinux.org/index.php/Solid_State_Drives>
- <https://wiki.archlinux.org/index.php/ASUS_Zenbook_Pro_UX501>
- <https://wiki.archlinux.org/index.php/microcode>
- [Hardware video acceleration](https://wiki.archlinux.org/index.php/Hardware_video_acceleration)

### Profile sync daemon + Browser
<https://wiki.archlinux.org/index.php/profile-sync-daemon>
```sh
sudo pacman -S profile-sync-daemon
psd # Create config
nano ~/.config/psd/psd.conf # Enable browsers
systemctl --user start psd
systemctl --user enable psd
```

### Move tmp to memory
<https://wiki.archlinux.org/index.php/Tmpfs#Examples>
```sh
echo 'tmpfs   /tmp   tmpfs   nodev,nosuid,size=5G 0 0' | sudo tee --append /etc/fstab
cat /etc/fstab
sudo mount -a
findmnt --target /tmp
```

### Turn off SSD accesstime
<https://wiki.archlinux.org/index.php/Fstab#atime_options>
```sh
sudo nano /etc/fstab
# change *time to noatime
reboot
```

### Run makepkg in tmp
<https://wiki.archlinux.org/index.php/Makepkg#Improving_compile_times>
```sh
sudo nano /etc/makepkg.conf
# uncomment BUILDDIR=/tmp/makepkg
```

### DNSMasq
<https://wiki.archlinux.org/index.php/dnsmasq>
```sh
pikaur -S dnsmasq
sudo systemct start dnsmasq
sudo systemct enable dnsmasq
sudo systemct status dnsmasq
sudo cp /etc/dnsmasq.conf /etc/dnsmasq.conf.original
# Copy https://yasinaydin.net/config/dnsmasq to /etc/dnsmasq.conf
sudo systemct restart dnsmasq
sudo systemct status dnsmasq
sudo sed -i '1inameserver 127.0.0.1' /etc/hosts
```
