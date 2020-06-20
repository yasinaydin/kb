# ccache

Source: <https://wiki.archlinux.org/index.php/Ccache>

## Install
1. Install `ccache`
2. In `/etc/makepkg.conf`, uncomment `ccache`
3. Add following to `~/.bashrc` (included in `.bashrc` backup)

```sh
export PATH="/usr/lib/ccache/bin/:$PATH"
export CCACHE_DIR=/tmp/ccache` to `~/.bashrc`
```

4. In `/etc/updatedb.conf` add `/home/yasin/.ccache `
