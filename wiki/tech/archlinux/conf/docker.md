# Docker

Source: <https://wiki.archlinux.org/index.php/Docker>

## Install
```sh
kur docker-compose
sudo gpasswd -a $(whoami) docker

# Optional
sudo systemctl start docker
sudo systemctl enable docker
```

## Uninstall
```sh
sil docker
```
