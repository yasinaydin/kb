# DNSMasq

Source: <https://wiki.archlinux.org/index.php/dnsmasq>

## Install

```sh
pikaur -S dnsmasq
sudo systemct start dnsmasq
sudo systemct enable dnsmasq
sudo systemct status dnsmasq
sudo cp /etc/dnsmasq.conf /etc/dnsmasq.conf.original
# Copy https://yasinaydin.net/config/dnsmasq to /etc/dnsmasq.conf
sudo systemct restart dnsmasq
sudo systemct status dnsmasq
sudo sed -i '1inameserver 127.0.0.1' /etc/hosts
```