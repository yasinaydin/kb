https://wiki.archlinux.org/index.php/Redshift

```sh
kur redshift
kur python-gobject
redshift -l 59:24 # for tallinn, to test
systemctl daemon-reload
systemctl --user enable --now redshift-gtk.service
```
