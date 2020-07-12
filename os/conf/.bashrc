#!/bin/bash
# ~/.bashrc

[[ $- != *i* ]] && return # return if not interactive
alias ls='ls --color=auto' # ls color
PS1='[\u@\h \W]\$ ' # bash prompt

#############
# ALIASES
#############

# dns
alias dns='cat /etc/resolv.conf'

# encfs
alias keys='encfs ~/Dropbox/keys/ ~/keys'

# journalctl
alias logs="journalctl -m -p warning" 

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

#
# Get scripts directory and make them reachable 
# Works with symbolic linked .bashrc
# https://stackoverflow.com/a/179231
#
pushd . > /dev/null
SCRIPT_PATH="${BASH_SOURCE[0]}";
if ([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do cd `dirname "$SCRIPT_PATH"`; SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
cd `dirname ${SCRIPT_PATH}` > /dev/null
cd ../scripts
SCRIPT_PATH=`pwd`
popd  > /dev/null
export PATH="$SCRIPT_PATH::$PATH"

#############
# WORK
#############

[[ -f ~/.bashrc.work ]] && . ~/.bashrc.work
