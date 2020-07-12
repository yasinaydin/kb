## ninfod

Source: <https://bugs.archlinux.org/task/65420>

Info: ninfod is a part of **core/iputils**

Check logs:
```sh
journalctl -u ninfod
sudo nano /usr/lib/systemd/system/ninfod.service```
# Update to Documentation=man:ninfod(8)
```

## alsactl

Source: <https://community.chakralinux.org/t/how-to-solve-usr-sbin-alsactl-restore-0-failed-with-exit-code-99/7047>

```sh
sudo code /usr/lib/udev/rules.d/90-alsa-restore.rules
# comment 2 lines with TEST with #
```
