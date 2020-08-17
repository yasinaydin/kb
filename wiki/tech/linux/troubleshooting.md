# Wiki.Linux.Troubleshooting

## Daily checks

- upp (pacman -Syu)
- pacman -Qkk
- logs (journalctl)
- cece (clear cache)
- grpck (group consistency check)


---

## pacman altered files

Source: <https://bbs.archlinux.org/viewtopic.php?id=186994>

Detect:
```sh
sudo pacman -Qkkq | grep -v "0 altered files"
sudo pacman -Qkq
sudo pacman -Qkq | awk '{print $1 | "sort"}' | uniq
```

Fix:
```sh
pikaur -S $(sudo pacman -Qkq | awk '{print $1 | "sort"}' | uniq )
```

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


## locale missing error

reason: missing locale bc of localepurge. in the past i wwas using it, but now its deprecated and apparently not healty

detect:
```sh
sudo pacman -Qkk | warning
# warning: could not get file information for usr/share/locale/el/LC_MESSAGES/xfce4-panel.mo
```

solution:
```sh
sudo pacman -Qkk 2>&1 | grep warning | cut -d' ' -f2 | cut -d':' -f1 | uniq | tr '\n' ' '
# 2>1 for putting stderr to stdout so it ll be greppable
# cut is for splitting space
# tr is to replace lines into spaces
# then run
sudo pacman -S #copy paste packages from previous steps
```


## wireless not working - device not shown
- restart to windows and back at linux
- make sure random mac is disabled at windows
- make sure have linux-firmware installed
