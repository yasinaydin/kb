https://wiki.archlinux.org/index.php/Redshift

```sh
kur redshift
# kur python-gobject # why?
# redshift -l 59:24 # for tallinn, to test # is it needed?
cp ~/git/yasin/kb/os/conf/redshift.conf ~/.config/redshift/redshift.conf 
systemctl daemon-reload
systemctl --user enable --now redshift
```
