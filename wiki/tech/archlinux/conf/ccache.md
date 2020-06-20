
[Source](https://wiki.archlinux.org/index.php/Ccache)

1. Install `ccache`
2. In `/etc/makepkg.conf`, uncomment `ccache`
3. Add following to `~/.bashrc`

```sh
export PATH="/usr/lib/ccache/bin/:$PATH"
export CCACHE_DIR=/tmp/ccache` to `~/.bashrc`
```
