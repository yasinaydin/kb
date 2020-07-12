#!/bin/sh
pikaur -Rscnu virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-guest-utils

rm -rf ~/.config/VirtualBox
rm -rf ~/VirtualBox\ VMs

sudo rm -rf /root/.config/VirtualBox
