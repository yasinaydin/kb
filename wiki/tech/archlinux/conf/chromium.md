# Chromium

## Install

Source: https://wiki.archlinux.org/index.php/Chromium

```sh
pikaur -S chromium chromium-widevine
```

Edit `/etc/updatedb.conf` and add following directories:
- `/home/yasin/.cache/chromium`
- `/home/yasin/.config/chromium`
- `/home/yasin/.config/chromium-back-ovfs`

## Set up Profiles

Work laptop:
- Work (synced with google)

Home laptop:
- Oz - Offline
- Oz-gmail (synced with google)
- Work (synced with google)
