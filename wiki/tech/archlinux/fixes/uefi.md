# Fix UEFI

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
