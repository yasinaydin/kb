#
# history size
#
export HISTFILESIZE=
export HISTSIZE=

#
# colored outputs
#
alias ls='ls --color=auto'

#
# prompt
#
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# PS1="\u@\h:\[$C_Yellow\]\w \[$C_LightRed\]\$(parse_git_branch)\[$F_Reset\]$ "
PS1="\u \[$C_Yellow\]\w \[$C_LightRed\]\$(parse_git_branch)\[$F_Reset\]$ "
