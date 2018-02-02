export ZSH=/Users/george/.oh-my-zsh

DEFAULT_USER="george"

ZSH_THEME="theunraveler"

HIST_STAMPS="yyyy-mm-dd"

DISABLE_UPDATE_PROMPT=true

plugins=(ruby brew bundler git osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# stop typing cd
setopt AUTO_CD

# spell check commands
setopt CORRECT

# wait before deleting things
setopt RM_STAR_WAIT

# magic / default
setopt ZLE

# never beep
setopt NO_BEEP

alias gpm="ssh titanpointe.org"
alias rumad="ssh estudiante@rumad.uprm.edu"
alias pegasus="ssh georg_pm@pegasus.uprm.edu"
alias geo="ssh 136.145.123.123"
alias gps="ssh gps.uprm.edu"
alias deploy="git push deploy master && git push origin master"

source ~/.bash_profile
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

export PATH="/usr/local/sbin:$PATH"
