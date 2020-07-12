## Kernel logs since boot
```sh
journalctl -kb
```

## Logs by service
```sh
journalctl -u service-name
```

## Clear all logs
```sh
sudo journalctl --rotate
sudo journalctl --vacuum-time=1s
```
