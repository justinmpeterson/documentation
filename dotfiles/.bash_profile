# BASH CODING TIPS
# Running a for loop on one line
# for i in {1..5}; do COMMAND-HERE; done
# Creating a subdirectory named after every file in a directory, then moving each file to its subdir
# for f in *.txt; do mkdir "${f%.*}" && mv "$f" "${f%.*}"; done

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# PATH=$PATH:~/Documents/todotxt:/usr/local/sbin
# export PATH=/usr/local/bin:/usr/local/sbin:$HOME/Documents/todotxt:$PATH
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=/usr/local/bin:/usr/local/sbin:/Applications/Utilities/instantclient_12_2:${GOPATH}/bin:${GOROOT}/bin:$PATH

# TODO.TXT stuff
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

# Generic stuff
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ll; }
export PS1="\![\D{%a %Y%m%d}|\t][\W]$ "
alias dnsflush="sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset"
export AWS_PROFILE=default
#export PROJECT_HOME=$HOME/Documents/code/py
#export ORACLE_HOME=/usr/local/opt/instantclient-basic11/
#export SQLPATH=/usr/local/opt/instantclient-basic11/sqlplus/admin/
#export TNS_ADMIN=/usr/local/opt/instantclient-basic11/network/admin/
export ORACLE_HOME=/Applications/Utilities/instantclient_12_2/
export TNS_ADMIN=${ORACLE_HOME}network/admin/
export ORACLE_ADMIN=${TNS_ADMIN}
set -o vi

# STATS servers
dlfiles() { open -g "cifs://jpeterson:$1@cm-downloads.nas.stats.local/comm_dl_downloads"; }
dllogs() { open -g "cifs://jpeterson:$1@cm-downloads-iis.nas.stats.local/comm_dl_webshare/Logfiles"; }
bladerac() { open "cifs://jpeterson:$1@co-qfds2.nas.stats.local/co-qfds2/db_output/commercial/xmlout"; }
stagerac() { open "cifs://jpeterson:$1@co-qfds-stage.nas.stats.local/co-qfds-stage/db_output"; }
hdrive() { open "cifs://jpeterson:$1@nas/user_storage\$/users/jpeterson"; }
hist() { open "cifs://jpeterson:$1@commdata$2.nas.stats.local/comm_$2_data"; }
svr() { open "cifs://jpeterson:$1@$2"; }
svrc() { open "cifs://jpeterson:$1@$2/c$"; }
svrd() { open "cifs://jpeterson:$1@$2/d"; }
svre() { open "cifs://jpeterson:$1@$2/e"; }
svrdns() { open "cifs://jpeterson:$1@$2.nas.stats.local/$2"; }
