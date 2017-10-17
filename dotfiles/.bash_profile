# Aliases
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
# alias "hub" as "git"
eval "$(hub alias -s)"
alias ll='ls -FGlAhp'

# Exports
export PS1="[\D{%a %Y%m%d}|\t][\W]$ "

# Functions
cd() { builtin cd "$@"; ll; }
year() { my_year=$(date +%Y); cal $my_year; }

# TODO-TXT
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

# Misc
set -o vi

neofetch
