#!/bin/bash

RECIPE_URL="https://wiki.archlinux.org/index.php/Firefox"

RECIPE_PKGS="firefox"

RECIPE_FOLDERS_HOME=(
  "$HOME/.cache/mozilla/firefox"
  "$HOME/.mozilla/firefox"
)

# @TODO @will implement
# emptyAndDeleteFolder "$HOME/.mozilla"
RECIPE_FOLDERS_HOME_CLEAN=(
  "$HOME/.mozilla"
)

RECIPE_FOLDERS_ROOT=(
  "/usr/share/xfce4/helpers/firefox.desktop"
)
