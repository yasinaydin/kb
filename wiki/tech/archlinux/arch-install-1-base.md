# samsung magician?
Set Device Security (Not opal, not class 0, but the last one)



Source: <https://wiki.archlinux.org/index.php/Installation_guide>

## 1. Prepare

```sh
setfont latarcyrheb-sun32 #IF: 4k screen

wifi-menu -o #IF: Wifi

ping archlinux.org

nano /etc/pacman.d/mirrorlist
# Move Finland to top and save
pacman -Syy

timedatectl set-ntp true
timedatectl status
```

## 2. Disk

Verify boot mode:
```sh
ls /sys/firmware/efi/efivars
```

Check disk:
```sh
fdisk -l
lsblk -a
```

UEFI-new:
```sh
# tbd
```

UEFI-existing:
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

BIOS:
```sh
fdisk -l
fdisk /dev/sda
# g -> n -> Enter (x4) -> w
fdisk -l
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
```

## 3. Base

```sh
pacstrap /mnt base base-devel linux linux-firmware nano 

genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Europe/Tallinn /etc/localtime
hwclock --systohc
date

nano /etc/locale.gen
# uncomment en_US.UTF-8 and save
locale-gen
echo "FONT=latarcyrheb-sun32" >> /etc/vconsole.conf #IF: 4k screen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "FONT_MAP=8859-2" > /etc/vconsole.conf

echo XXXXX > /etc/hostname
cat /etc/hostname
echo "127.0.1.1  XXXXX.localdomain  XXXXX" >> /etc/hosts
cat /etc/hosts

sudo pacman -S networkmanager dhclient
sudo systemctl enable NetworkManager
pacman -S iw wpa_supplicant  #IF: Wireless


passwd

useradd -m -G wheel -s /bin/bash yasin
passwd yasin
EDITOR=nano visudo
# uncomment wheel line and save
```

## 4. Bootloader

BIOS+DOS

```sh
pacman -S syslinux gptfdisk # gptfdisk for legacy bios like virtualbox
syslinux-install_update -iam
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

## 5. Exit
```sh
exit
umount -R /mnt
reboot
```
