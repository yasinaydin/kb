#!/bin/sh
pikaur -Rscnu virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-guest-utils

rm -rf $HOME/.config/VirtualBox
rm -rf $HOME/VirtualBox\ VMs

sudo rm -rf /root/.config/VirtualBox
