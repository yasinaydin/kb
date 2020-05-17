---
layout: default
category: Arch Linux
slug: arch-linux-how-to-speed-up-makepkg
title: "How to speed up makepkg"
---


## CCache

[Source](https://wiki.archlinux.org/index.php/Ccache)

1. Install `ccache`
2. In `/etc/makepkg.conf`, uncomment `ccache`
3. Add following to `~/.bashrc`

```sh
export PATH="/usr/lib/ccache/bin/:$PATH"
export CCACHE_DIR=/tmp/ccache` to `~/.bashrc`
```

## makepkg.conf

[Source](https://www.reddit.com/r/archlinux/comments/494c84/speed_up_compiling_of_aur_packages/)

In `/etc/makepkg.conf` do following changes:

```sh
# Compile for only native arch
CFLAGS="-march=native -O2 -pipe -fno-plt"
CXXFLAGS="${CFLAGS}"

# Use all CPU cores
MAKEFLAGS="-j$(nproc)"

# Use ccache
BUILDENV=(!distcc color ccache check !sign)

# Use /tmp (mount to RAM first)
BUILDDIR=/tmp/makepkg

# Do not use compression
COMPRESSGZ=(cat)
COMPRESSBZ2=(cat)
COMPRESSXZ=(cat)
COMPRESSLRZ=(cat)
COMPRESSLZO=(cat)
COMPRESSZ=(cat)
```

## pikaur

[Source](https://github.com/actionless/pikaur#configuration)

In `~/.config/pikaur.conf` update following settings:

- DontEditByDefault: yes
- NoEdit: yes
- NoDiff: yes
- RequireEnterConfirm: no
