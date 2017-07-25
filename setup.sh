/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew upgrade
brew install youtube-dl mas zsh git openssh gpg bash-completions zsh-completions ffmpeg wget rbenv
brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install iterm2 1password alfred google-chrome logitech-options the-unarchiver sublime-text iina
mas install 1107421413 924726344 420212497
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
cd ~
rm .zshrc .bash_profile .vimrc

wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/.zshrc
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/.bash_profile
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/.gemrc
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/.gitconfig
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/.gitignore

cd Downloads/
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/GitHub%20(SL).tmTheme
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/GitHub.tmTheme
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/Jekyll.sublime-settings
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/MarkdownPreview.sublime-settings
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/Preferences.sublime-settings
wget https://raw.githubusercontent.com/georgeperez/dotfiles/master/Side%20Bar.sublime-settings

defaults write com.apple.Dock showhidden -bool YES 
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2 
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling" 
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true 
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool true 
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool true 
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true 
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true 

mkdir ~/Pictures/Screenshots 
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true 

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false 
defaults write com.apple.finder QLEnableTextSelection -bool true 
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write NSGlobalDomain com.apple.springing.enabled -bool true 
defaults write NSGlobalDomain com.apple.springing.delay -float 0.3
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
chflags nohidden ~/Library
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool false
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0
defaults write com.apple.addressbook ABShowDebugMenu -bool true 
defaults write com.apple.TextEdit RichText -int 0 
defaults write com.apple.TextEdit PlainTextEncoding -int 4 
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4 
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true 
defaults write com.apple.appstore WebKitDeveloperExtras -bool true 
defaults write com.apple.appstore ShowDebugMenu -bool true 
defaults write com.google.Chrome DisablePrintPreview -bool true 
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true 
defaults write com.google.Chrome ExtensionInstallSources -array "https://gist.githubusercontent.com/" "http://userscripts.org/*" 
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName 
sudo systemsetup -setrestartfreeze on
killall Dock
killall SystemUIServer


open /Applications/Alfred\ 2.app /Applications/Alfred\ 2.app/Contents/Preferences/Alfred\ Preferences.app -j
