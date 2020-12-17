/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
brew update
brew upgrade
brew bundle install

cd ~
curl -O https://raw.githubusercontent.com/georgeperez/dotfiles/main/.gemrc
curl -O https://raw.githubusercontent.com/georgeperez/dotfiles/main/.gitconfig
curl -O https://raw.githubusercontent.com/georgeperez/dotfiles/main/.gitignore
curl -O https://raw.githubusercontent.com/georgeperez/dotfiles/main/.vimrc
curl -O https://raw.githubusercontent.com/georgeperez/dotfiles/main/.zshrc

defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 3
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling" 
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true 
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool true 
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool true 
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true 
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true 

defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true 

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false 
defaults write com.apple.finder QLEnableTextSelection -bool true 
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool false
defaults write NSGlobalDomain com.apple.springing.enabled -bool true 
defaults write NSGlobalDomain com.apple.springing.delay -float 0.3
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock orientation -string right
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool false
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
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
sudo systemsetup -setrestartfreeze on
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
killall Dock
killall SystemUIServer
killall Finder
