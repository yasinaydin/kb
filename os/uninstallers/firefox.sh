#!/bin/bash

rm -rf ~/.cache/mozilla/firefox
rm -rf ~/.mozilla/firefox

sudo rm -f /usr/share/xfce4/helpers/firefox.desktop

emptyAndDeleteFolder "$HOME/.mozilla"
