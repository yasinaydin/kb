# Profile sync daemon + Browser

Source: <https://wiki.archlinux.org/index.php/profile-sync-daemon>

## Install

```sh
kur profile-sync-daemon
psd # Create config
nano ~/.config/psd/psd.conf # Enable browsers
systemctl --user enable --now psd.service
```