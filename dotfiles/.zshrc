export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# TODO.TXT stuff
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

autoload -U zmv
eventp() { echo "$1\t$2" >> ~/.calendar/calendar.personal; }
eventpp() { echo "$1\t$2" >> ~/.calendar/calendar.personal_permanent; }
eventw() { echo "$1\t$2" >> ~/.calendar/calendar.work; }
eventwp() { echo "$1\t$2" >> ~/.calendar/calendar.work_permanent; }
year() { my_year=$(date +%Y); cal $my_year; }
alias ll='ls -FGlAhp'
alias reload="source ~/.zshrc && echo ~/.zshrc has been reloaded"
bindkey -v
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv background_jobs history time)
export ORACLE_HOME=/usr/local/opt/instantclient-basic11/
export SQLPATH=/usr/local/opt/instantclient-basic11/sqlplus/admin/
export TNS_ADMIN=/usr/local/opt/instantclient-basic11/network/admin/
# STATS servers
dlfiles() { open -g "cifs://jpeterson:$1@cm-downloads.nas.stats.local/comm_dl_downloads"; }
dllogs() { open -g "cifs://jpeterson:$1@cm-downloads-iis.nas.stats.local/comm_dl_webshare/Logfiles"; }
bladerac() { open -g "cifs://jpeterson:$1@co-qfds2.nas.stats.local/co-qfds2/db_output/commercial/xmlout"; }
stagerac() { open -g "cifs://jpeterson:$1@co-qfds-stage.nas.stats.local/co-qfds-stage/db_output"; }
hdrive() { open -g "cifs://jpeterson:$1@nas/user_storage$/users/jpeterson"; }
hist() { open -g "cifs://jpeterson:$1@commdata$2.nas.stats.local/comm_$2_data"; }
svr() { open -g "cifs://jpeterson:$1@$2"; }
svrc() { open -g "cifs://jpeterson:$1@$2/c$"; }
svrd() { open -g "cifs://jpeterson:$1@$2/d"; }
svre() { open -g "cifs://jpeterson:$1@$2/e"; }
svrdns() { open -g "cifs://jpeterson:$1@$2.nas.stats.local/$2"; }
