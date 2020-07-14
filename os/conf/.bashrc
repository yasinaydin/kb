#!/bin/bash
# ~/.bashrc

[[ $- != *i* ]] && return # return if not interactive
PS1='[\u@\h \W]\$ ' # bash prompt

# Colors
alias ls='ls --color=auto'
alias pacman="pacman --color=auto"
alias pikaur="pikaur --color=auto"

#############
# ALIASES
#############

# dns
alias dns='cat /etc/resolv.conf'

# encfs
alias keys='encfs $HOME/Dropbox/keys/ $HOME/keys'

# journalctl
alias logs="journalctl -m -p warning" 
alias logs-rotate="sudo journalctl --rotate" 
alias logs-vacuum="sudo journalctl --vacuum-time=1s" 

# pacman
alias kur='pikaur -S --needed'
alias upp='pikaur -Syu'

# php
alias phps='php -S 0.0.0.0:8088'

# updatedb
alias bul='sudo updatedb && sudo locate -i'

#############
# ENV
#############

# aws-sam
export SAM_CLI_TELEMETRY=0

# bash
export HISTFILESIZE=
export HISTSIZE=

# browser/chrome
export BROWSER=chromium
export CHROME_BIN=/usr/bin/chromium

# ccache
export CCACHE_DIR=/tmp/ccache
export PATH="$PATH:/usr/lib/ccache/bin"

#code
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ELECTRON_TRASH=gio
export VISUAL=code

# python
export PATH="$PATH:$HOME/.local/bin"

# ruby
export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
export RBENV_VERSION=2.5.3

# sencha
export PATH="$PATH:$HOME/bin/Sencha/Cmd"

# yarn
export PATH="$PATH:$HOME/.yarn/bin"

#############
# SCRIPTS
#############

BASHRC_LOC=`readlink -f .bashrc`
KB_DIR=`dirname $(dirname $(dirname $BASHRC_LOC))`

export PATH="$PATH:$KB_DIR/os/scripts"
export kb=$KB_DIR

#############
# WORK
#############

[[ -f ~/.bashrc.work ]] && . ~/.bashrc.work
