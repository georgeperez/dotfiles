export ZSH=/Users/$USER/.oh-my-zsh

fpath+=~/.zfunc

#{{{ history

# pulled from: http://stackoverflow.com/questions/171563/whats-in-your-zshrc

# Where it gets saved
HISTFILE=~/.history

# Remember about a years worth of history
SAVEHIST=10000
HISTSIZE=10000

# append instead of overwriting
setopt APPEND_HISTORY

# Write after each command
# setopt INC_APPEND_HISTORY

# share history between multiple shells
setopt SHARE_HISTORY

# if I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS

# even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS

# reduce blank space
setopt HIST_REDUCE_BLANKS

# if a line starts with a space, don't save it.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# when using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY

# save the time and how long a command ran
setopt EXTENDED_HISTORY

setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

#}}}
export PATH="/Users/gpm/.pyenv/shims:/Users/gpm/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"
ZSH_DISABLE_COMPFIX=true
DISABLE_UPDATE_PROMPT=true
DEFAULT_USER=$USER
ZSH_THEME="theunraveler"
HIST_STAMPS="yyyy-mm-dd"
plugins=(bundler git macos colorize)
source $ZSH/oh-my-zsh.sh
alias flush="dscacheutil -flushcache"
alias dev="cd ~/Development"
alias reload="exec $SHELL -l"
alias brewski="brew upgrade && brew upgrade --cask && brew cleanup && rm -rf $(brew --cache)"
alias dockerup="docker compose pull && docker compose down && docker compose up -d --remove-orphans --force-recreate && docker volume prune -f && docker image prune -f"
alias youtube-dl="yt-dlp"
alias eleventy="npx @11ty/eleventy"
eval $(thefuck --alias)
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"