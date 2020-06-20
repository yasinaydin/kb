# Virtualbox

Source: https://wiki.archlinux.org/index.php/VirtualBox

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
```
