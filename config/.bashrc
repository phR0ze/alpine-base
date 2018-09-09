[ -x /usr/bin/dircolors ] && [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dircolors)"

set -o vi
shopt -s dotglob
shopt -s extglob
shopt -s histappend
shopt -s checkwinsize

HISTSIZE=1000
HISTFILESIZE=2000

alias ll='ls -lah --color=auto'

none="\[\e[0m\]"
cyber="\[\e[1;38;5;67m\]"
export PS1="${cyber}[\u@\s:\w]\$${none} "
