export ZSH=/Users/george/.oh-my-zsh
DEFAULT_USER="george"
ZSH_THEME="theunraveler"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_UPDATE_PROMPT=true
plugins=(brew bundler git osx)
source $ZSH/oh-my-zsh.sh
alias ti="ssh titanpointe.org"
alias rumad="ssh estudiante@rumad.uprm.edu"
alias pegasus="ssh georg_pm@pegasus.uprm.edu"
alias geo="ssh george@136.145.123.123"
alias gps="ssh george@gps.uprm.edu"
alias deploy="git push origin master && git push deploy master"
source ~/.bash_profile
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"
