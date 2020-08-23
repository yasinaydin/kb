https://wiki.archlinux.org/index.php/Redshift

```sh
kur redshift
# kur python-gobject # why? 
#https://bugs.archlinux.org/task/39833?project=0&order=id&sort=desc&status%5B0%5D=closed&string=python-gobject
# for gtk?

# redshift -l 59:24 # for tallinn, to test # is it needed?
cp ~/git/yasin/kb/os/conf/redshift.conf ~/.config/redshift/redshift.conf 
systemctl daemon-reload
systemctl --user enable --now redshift
```
