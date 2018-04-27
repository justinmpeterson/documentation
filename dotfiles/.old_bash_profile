# Aiases
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
# alias "hub" as "git"
eval "$(hub alias -s)"
alias ll='ls -FGlAhp'

# Functions
cd() { builtin cd "$@"; ll; }
parse_git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
year() { my_year=$(date +%Y); cal $my_year; }
todogit()
{
  my_date=$(date +%Y%m%d)
  t report
  cd ~/Documents/todotxt/
  git add .
  git commit -am "$my_date My daily commit"
  git push
  cd ~
}
bladerac() { open "cifs://jpeterson:$1@co-qfds2.nas.stats.local/co-qfds2/db_output/commercial/xmlout"; }
stagerac() { open "cifs://jpeterson:$1@co-qfds-stage.nas.stats.local/co-qfds-stage/db_output"; }
hdrive() { open "cifs://jpeterson:$1@nas5a/jpeterson"; }
hist() { open "cifs://jpeterson:$1@commdata$2.nas.stats.local/comm_$2_data"; }
svr() { open "cifs://jpeterson:$1@$2"; }
svrc() { open "cifs://jpeterson:$1@$2/c$"; }
svrd() { open "cifs://jpeterson:$1@$2/d"; }
svre() { open "cifs://jpeterson:$1@$2/e"; }
svrdns() { open "cifs://jpeterson:$1@$2.nas.stats.local/$2"; }

# TODO-TXT
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

# Exports
export PS1="[\D{%a %Y%m%d}|\t][\W]\033[32m\]\$(parse_git_branch)\033[00m\]$ "

# Misc
set -o vi

neofetch
