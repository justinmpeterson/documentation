
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# PATH=$PATH:~/Documents/todotxt:/usr/local/sbin
# export PATH=/usr/local/bin:/usr/local/sbin:$HOME/Documents/todotxt:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# TODO.TXT stuff
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

# Generic stuff
parse_git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ll; }
# export PS1="[\D{%a %Y%m%d}|\t][\W]\033[32m\]\$(parse_git_branch)\033[00m\]$ "
export PS1="[\D{%a %Y%m%d}|\t][\W]$ "
alias rip="python3 ~/Documents/code/py/whitechapel.py $1"
alias riph="python3 ~/Documents/code/py/whitechapel.py --hard $1"
export AWS_PROFILE=default
export PROJECT_HOME=$HOME/Documents/code/py
export ORACLE_HOME=/usr/local/opt/instantclient-basic11/
export SQLPATH=/usr/local/opt/instantclient-basic11/sqlplus/admin/
export TNS_ADMIN=/usr/local/opt/instantclient-basic11/network/admin/
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/Documents/code/.PyEnvs
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
set -o vi

source /usr/local/bin/virtualenvwrapper.sh

# STATS servers
bladerac() { open "cifs://jpeterson:$1@co-qfds2.nas.stats.local/co-qfds2/db_output/commercial/xmlout"; }
stagerac() { open "cifs://jpeterson:$1@co-qfds-stage.nas.stats.local/co-qfds-stage/db_output"; }
hdrive() { open "cifs://jpeterson:$1@nas5a/jpeterson"; }
hist() { open "cifs://jpeterson:$1@commdata$2.nas.stats.local/comm_$2_data"; }
svr() { open "cifs://jpeterson:$1@$2"; }
svrc() { open "cifs://jpeterson:$1@$2/c$"; }
svrd() { open "cifs://jpeterson:$1@$2/d"; }
svre() { open "cifs://jpeterson:$1@$2/e"; }
svrdns() { open "cifs://jpeterson:$1@$2.nas.stats.local/$2"; }
