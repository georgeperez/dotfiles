export ZSH=/Users/george/.oh-my-zsh
DEFAULT_USER="george"
ZSH_THEME="theunraveler"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_UPDATE_PROMPT=true
plugins=(brew bundler git osx vagrant)
source $ZSH/oh-my-zsh.sh
alias ti="ssh titanpointe.org"
alias pegasus="ssh georg_pm@pegasus.uprm.edu"
alias deploy="git push origin master && git push deploy master"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source ~/.bash_profile
