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
alias brewski="brew upgrade && brew cask upgrade && brew cleanup && brew prune"
source ~/.bash_profile
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/sbin:$PATH"
