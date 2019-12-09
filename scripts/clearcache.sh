#!/bin/bash
sudo localepurge > /dev/null

pikaur -Scc

sudo journalctl -q --vacuum-time=1d > /dev/null

rm -f ~/.bash_history 
rm -f ~/.bash_logout # Commants to run on BASH logout
rm -f ~/.dmrc # Legacy GNOME2 default user session
rm -f ~/.cache/pikaur/*
rm -f ~/.netrc # for heroku
rm -f ~/.mysql_history
rm -f ~/.node_repl_history
rm -f ~/.python-history
rm -f ~/.esd_auth # Pulseaudio cookie
rm -f ~/.Rhistory # R Lang's/CLI's history
rm -f ~/.vuerc
rm -f ~/.xsession-errors*
rm -f ~/.yarnrc

rm -fr ~/.cache/thumbnails
rm -fr ~/.config/chromium/Default/Service\ Worker/*
rm -fr ~/.docker # auth setings
rm -fr ~/.java # java settings
rm -fr ~/.local/share/pikaur/aur_repos
rm -fr ~/.putty
rm -fr ~/.screenlayout # prob for arandr/xrandr
rm -fr ~/.subversion
rm -fr ~/.thumbnails
rm -fr ~/.uml

# a better way to do this?
# rm -fr ~/.config/chromium/Profile\ 1/Service\ Worker/*
# rm -fr ~/.config/chromium/Profile\ 2/Service\ Worker/*
# rm -fr ~/.config/chromium/Profile\ 3/Service\ Worker/*
# rm -fr ~/.config/chromium/Profile\ 6/Service\ Worker/*
# rm -fr ~/.config/chromium/Profile\ 7/Service\ Worker/*
# rm -fr ~/.config/chromium/Profile\ 9/Service\ Worker/*
# rm -fr ~/.config/chromium/Profile\ 10/Service\ Worker/*

if [ $# -ne 0 ] # If has any parameter
  then
    rm -fr ~/.cache
    rm -fr ~/.npm
    rm -fr ~/.node-gyp

    # Requires restart
    rm -f ~/.ICEauthority # X11 Auth Client2Client
    rm -f ~/.Xauthority # X11 Auth Client2Server
fi

if [ -x "$(command -v flatpak)" ]
  then
    flatpak uninstall --delete-data
    flatpak --unused uninstall --delete-data
fi
