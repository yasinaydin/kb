# speedup

https://averagelinuxuser.com/clean-arch-linux/


### Move tmp to memory
Source: <https://wiki.archlinux.org/index.php/Tmpfs#Examples>
```sh
echo 'tmpfs   /tmp   tmpfs   nodev,nosuid,size=5G 0 0' | sudo tee --append /etc/fstab
cat /etc/fstab
sudo mount -a
findmnt --target /tmp
```

### Turn off SSD accesstime
Source: <https://wiki.archlinux.org/index.php/Fstab#atime_options>
```sh
sudo nano /etc/fstab
# change *time to noatime
reboot
```
