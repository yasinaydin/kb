# virtualbox

Source: <https://wiki.archlinux.org/index.php/VirtualBox>

## Install
```sh
kur virtualbox virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-ext-oracle
sudo gpasswd -a $(whoami) vboxusers
```

Then reboot

## Uninstall
```sh
sil virtualbox-guest-iso
sil virtualbox
sudo gpasswd -d $(whoami) vboxusers
```

---

## Arch as Guest

Inside the arch:
```sh
pikaur -S --needed virtualbox-guest-utils virtualbox-guest-modules-arch
systemctl enable vboxservice.service
sudo VBoxClient-all
poweroff
# For screen autoscaling, switch display driver to VboxVga on VirtualBox
```
