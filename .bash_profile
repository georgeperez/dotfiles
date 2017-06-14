export RBENV_ROOT=/usr/local/var/rbenv
export EDITOR='subl -w'
export PATH="$HOME/.fastlane/bin:$PATH"
eval "$(rbenv init -)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi