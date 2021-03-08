# virtualbox

---

## Arch as host
```sh
kur virtualbox virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-ext-oracle
```

<!-- Accessing host USB devices in guest
To use the USB ports of your host machine in your virtual machines, add users that will be authorized to use this feature to the vboxusers user group. -->

## Arch as Guest

Inside the arch:
```sh
pikaur -S --needed virtualbox-guest-utils virtualbox-guest-modules-arch
systemctl enable vboxservice.service
sudo VBoxClient-all
poweroff
# For screen autoscaling, switch display driver to VboxVga on VirtualBox
```
