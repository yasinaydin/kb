# virtualbox

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
