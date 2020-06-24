# makepkg

Sources:
- <https://wiki.archlinux.org/index.php/Makepkg>
- <https://www.reddit.com/r/archlinux/comments/494c84/speed_up_compiling_of_aur_packages/>

## Configure

Dependencies:
- Ccache

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
