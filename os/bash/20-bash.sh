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

C_YELLOW="\e[33m"
C_LIGHTRED="\e[91m"
C_RESET="\e[00m"

# PS1="\u@\h:\[$C_YELLOW\]\w \[$C_LIGHTRED\]\$(parse_git_branch)\[$C_RESET\]$ "
PS1="\u \[$C_YELLOW\]\w \[$C_LIGHTRED\]\$(parse_git_branch)\[$C_RESET\]$ "
