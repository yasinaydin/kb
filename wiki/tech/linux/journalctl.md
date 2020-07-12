## Warning and above from all sources
```sh
# m=merge p=priority
journalctl -m -p warning
```

## Kernel logs since boot
```sh
# k=dmesg b=boot
journalctl -k
```

## Logs by service
```sh
# u=unit
journalctl -u service-name
```

## Clear all logs
```sh
sudo journalctl --rotate
sudo journalctl --vacuum-time=1s
```

## Priorities
- 0: emerg
- 1: alert
- 2: crit
- 3: err
- 4: warning
- 5: notice
- 6: info
- 7: debug
