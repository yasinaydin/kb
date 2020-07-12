#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

###
### SYSTEM
###

# general
export HISTFILESIZE=
export HISTSIZE=
export BROWSER=chromium
export CHROME_BIN=/usr/bin/chromium
alias encfs-keys='encfs ~/Dropbox/keys/ ~/keys'
# export VISUAL=nano; # Conflicts with vscode

# sys
alias logs="journalctl -m -p warning" 

# ccache
export PATH="/usr/lib/ccache/bin/:$PATH"
export CCACHE_DIR=/tmp/ccache

#dns
alias dns-cf="sudo cp $HOME/git/yasin/kb/os/conf/resolv.conf.cf /etc/resolv.conf"
alias dns-next="sudo cp $HOME/git/yasin/kb/os/conf/resolv.conf.next /etc/resolv.conf"
alias dns='cat /etc/resolv.conf'

# pacman
alias bul='sudo updatedb && sudo locate -i'
alias kur='pikaur -S --needed'
# alias sil='pikaur -Rscnu'
alias pro='ps aux | grep -i'
alias upp='pikaur -Syu'

###
### PROGRAMMING LANGUAGES
###

# python
export PATH="/home/yasin/.local/bin:$PATH"

# php
alias phps='php -S 0.0.0.0:8088'
# ruby
# export PATH="/home/yasin/.gem/ruby/2.7.0/bin:$PATH"

# sencha
# export PATH="/home/yasin/bin/Sencha/Cmd:$PATH"

# yarn
export PATH="/home/yasin/.yarn/bin/:$PATH"

# vuejs
# alias vue='vue -m yarn'
# When enabled, vue upgrade doesnt work

###
### DEVELOPMENT
###

# aws-sam
export SAM_CLI_TELEMETRY=0

# code
export VISUAL=code
export ELECTRON_TRASH=gio
export DOTNET_CLI_TELEMETRY_OPTOUT=1
# alias code="flatpak run com.visualstudio.code.oss"

# docker
alias docker-remove-containers='docker rm $(docker ps -a -q) -f'
alias docker-remove-volumes='docker volume prune'

# git
alias gcm='git clone --mirror'
alias grv='git remote -v'
alias .gp='git push'

# nvm
# export NVM_DIR="/home/yasin/.nvm"
# [ -s "/home/yasin/.nvm/nvm.sh" ] && \. "/home/yasin/.nvm/nvm.sh"  # This loads nvm
# export PATH="/home/yasin/bin/Sencha/Cmd:$PATH"
#
# [ -s "/home/yasin/.nvm/bash_completion" ] && \. "/home/yasin/.nvm/bash_completion"  # This loads nvm bash_completion

#
# WORK
#
[[ -f ~/.bashrc.work ]] && . ~/.bashrc.work

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
