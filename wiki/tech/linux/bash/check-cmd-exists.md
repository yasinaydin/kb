check if command/executable exists

```sh
_cmd=`pacman -Qs python-pip`
if [ -n "$_cmd" ]
 then echo "Installed"
 else echo "Not Installed"
fi
```
