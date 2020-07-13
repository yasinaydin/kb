#!/bin/bash

rm -rf $HOME/.cache/mozilla/firefox
rm -rf $HOME/.mozilla/firefox

sudo rm -rf /usr/share/xfce4/helpers/firefox.desktop

emptyAndDeleteFolder "$HOME/.mozilla"
