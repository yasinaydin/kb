#!/bin/bash
sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker

# remove user and groups
# group=docker
# @todo automate via groupmems and _fn ?
sudo gpasswd -d $(whoami) docker
sudo groupdel docker

# remove services
# servie=docker
# @todo automate via _fn ?
sudo systemctl daemon-reload
sudo systemctl disable --now docker
sudo rm -rf /etc/systemd/system/multi-user.target.wants/docker.service
sudo systemctl daemon-reload
