#!/bin/bash
sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker

sudo gpasswd -d $(whoami) docker
sudo groupdel docker
