#!/bin/bash

RECIPE_URL="https://wiki.archlinux.org/index.php/VirtualBox"

RECIPE_PKGS="virtualbox virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-ext-oracle"

RECIPE_GROUP="vboxusers"

RECIPE_FOLDERS_HOME=(
  "$HOME/.config/VirtualBox"
  "$HOME/VirtualBox VMs"
)

RECIPE_FOLDERS_ROOT=(
  "/root/.config/VirtualBox"
)
