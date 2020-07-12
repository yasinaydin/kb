https://wiki.archlinux.org/index.php/Redshift

```sh
kur redshift
kur python-gobject
redshift -l 59:24 # for tallinn, to test
systemctl daemon-reload
systemctl --user start redshift-gtk.service
systemctl --user enable redshift-gtk.service
```