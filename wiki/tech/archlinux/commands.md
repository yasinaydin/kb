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

## Pacman
Find & remove orphans:
```sh
sudo pacman -Rns $(pacman -Qqdtt)
```

### Compare packages

```sh
pacman -Qt | awk -F ' ' '{print $1}'
```

## Users
List:
```sh
less /etc/passwd
```

Force logout user:
```sh
pkill -KILL -u username
```

Remove with home and pool:
```sh
userdel -r username
```
