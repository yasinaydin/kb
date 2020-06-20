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

# ccache
export PATH="/usr/lib/ccache/bin/:$PATH"
export CCACHE_DIR=/tmp/ccache

#dns
alias dns-cf="sudo cp ~/git/yasin/kb/settings/resolv.conf.cf /etc/resolv.conf"
alias dns-next="sudo cp ~/git/yasin/kb/settings/resolv.conf.next /etc/resolv.conf"
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
# RM
#
function sil() {
    if [ -z "$1" -o -z "$1" ]; then
        echo "Usage: sil [package_name]";
        return -1;
    fi

    pikaur -Rscnu $1;

    FILE="/home/yasin/git/yasin/kb/uninstallers/$1.sh";
    if test -f "$FILE"; then
        echo "Has custom script: $FILE";
        . "$FILE"
    else
        echo "Doesnt have custom script.";
    fi

    pikaur -Scc --noconfirm;
    pikaur -Dk;
    rm -f ~/.cache/pikaur/*;
    sudo rm -rf /var/cache/pacman/pkg/$1-*
    sudo rm -rf /var/lib/systemd/coredump/core.$1.*
}
