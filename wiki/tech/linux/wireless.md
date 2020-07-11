## wireless info
Source: <https://www.cyberciti.biz/tips/linux-find-out-wireless-network-speed-signal-strength.html>

lspci:
```sh
lspci | egrep -i --color 'wifi|wlan|wireless'
lspci -vv -s $(lspci | egrep -i --color 'wifi|wlan|wire' | cut -d' ' -f1)
# or manually:
# lspci -vv -s 0c:00.0
```

lshw:
```sh
kur lshw
sudo lshw -C network
```

Interface: iwconfig:
```kur 
kur wireless_tools
iwconfig wlp2s0
```

Connection: nmcli
```sh
nmcli
nmcli connection
nmcli show $UUIDHERE_FROMCONNECTION
nmcli -f GENERAL,WIFI-PROPERTIES dev show wlp2s0
```

## wireless speed

iwconfig:
```sh
kur wireless_tools
iwconfig wlp2s0 | grep -i --color Link
```

nmcli:
```sh
nmcli dev wifi
```

proc:
```sh
cat /proc/net/wireless
# or
watch -n 1 cat /proc/net/wireless
```

wavemon:
```sh
kur wavemon
wavemon
```
