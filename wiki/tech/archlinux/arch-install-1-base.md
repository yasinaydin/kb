---
layout: default
category: Arch Linux
slug: installing-arch-linux-part-1-base
title: "Installing Arch Linux Part 1: Base"
---


## Sources

- <https://wiki.archlinux.org/index.php/installation_guide>
- <https://wiki.archlinux.org/index.php/Getting_and_installing_Arch>

## Install Media

- Download latest ISO from <https://www.archlinux.org/download/>
- Mount and load ISO <https://wiki.archlinux.org/index.php/Getting_and_installing_Arch>

## Prepare

```sh
setfont latarcyrheb-sun32 #IF: 4k screen

wifi-menu -o #IF: Wifi

ping archlinux.org

timedatectl set-ntp true
timedatectl status
```

## Disk

Verify boot mode:
```sh
ls /sys/firmware/efi/efivars
```

Check disk:
```sh
fdisk -l
lsblk -a
```

UEFI-new
```sh
```

UEFI-existing
```sh
BOOTPART=/dev/sda1 #IF:Asus /dev/nvme0n1p1
ROOTPART=/dev/sda4 #IF:Asus /dev/nvme0n1p5
fdisk -l
mkfs.ext4 $ROOTPART
mount $ROOTPART /mnt
mkdir -p /mnt/boot
mount $BOOTPART /mnt/boot
rm /mnt/boot/vmlinuz-linux #IF: Already exists
```

BIOS

```sh
fdisk -l
fdisk /dev/sda # n -> Enter (x4) -> w
fdisk -l
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
```

## Base

```sh
nano /etc/pacman.d/mirrorlist # Move Finland to top
pacstrap /mnt base base-devel git linux linux-firmware nano net-tools dhcpcd sudo

genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

arch-chroot /mnt

rm /etc/localtime
ln -sf /usr/share/zoneinfo/Europe/Tallinn /etc/localtime
hwclock --systohc
date

nano /etc/locale.gen # uncomment en_US.UTF-8
locale-gen
echo "FONT=latarcyrheb-sun32" >> /etc/vconsole.conf # If 4k screen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "FONT_MAP=8859-2" >> /etc/vconsole.conf

echo XXXXX > /etc/hostname
cat /etc/hostname
echo "127.0.1.1  XXXXX.localdomain  XXXXX" >> /etc/hosts
cat /etc/hosts

pacman -S iw wpa_supplicant dialog  #IF: Wireless

systemctl enable dhcpcd

passwd

useradd -m -G wheel -s /bin/bash yasin
passwd yasin
nano /etc/sudoers # uncomment wheel line
```

## Bootloader

BIOS+DOS

```sh
pacman -S syslinux
syslinux-install_update -i -a -m
nano /boot/syslinux/syslinux.cfg # rename sda3 to sda1, change timeout duration
```

UEFI

```sh
bootctl --path=/boot install

echo -e "default arch\ntimeout 0\neditor 0" > /boot/loader/loader.conf

echo -e "title   Arch Linux\nlinux   /vmlinuz-linux\ninitrd  /initramfs-linux.img" > /boot/loader/entries/arch.conf
param=`blkid -s PARTUUID -o value /dev/XXX` # Change /sdaX with your root part
echo "options root=PARTUUID=$param add_efi_memmap" >> /boot/loader/entries/arch.conf
```

## Exit
```sh
exit
umount -R /mnt
reboot
```

## (Optional) Pikaur
<https://github.com/actionless/pikaur>
```sh
mkdir -p tmp
cd tmp
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
pikaur -Syu
```

***

## Troubleshooting

## Fix UEFI

(Optional) to reset EFI partition if needed:
```sh
BOOTPART=/dev/sda1 #IF:Asus /dev/nvme0n1p1
ROOTPART=/dev/sda4 #IF:Asus /dev/nvme0n1p5
umount -R /boot /mnt
mkfs.fat -F32 $BOOTPART
mount $ROOTPART /mnt
mkdir -p /mnt/boot
mount $BOOTPART /mnt/boot
arch-chroot /mnt
pacman -S linux
```
Then run Install.Bootloader steps.
