# Arch Linux Commands

## Hardware

Enabled services:
```sh
systemctl list-unit-files --state=enabled
```

Enabled network devices:
```sh
systemctl list-units | grep -iE '(net|wpa|dhcp|conn|iwd|wicd)'
```

## Journalctl

Kernel log since current boot:
```sh
journalctl -kb
```

## Pacman
Find & remove orphans:
```sh
sudo pacman -Rns $(pacman -Qqdtt)
```

### Compare packages

```sh
pacman -Qt | awk -F ' ' '{print $1}'
