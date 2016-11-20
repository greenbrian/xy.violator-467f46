#!/bin/bash

# debug
set -xv

# update brew
brew update
brew upgrade

# mac setup

brew cask install atom
brew cask install whatsapp
brew install wget
brew install ack
brew install vim
brew install git
brew install git-lfs
brew install curl
brew install python
brew install jq
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install iterm2
brew install bash-completion
brew cask install slack
brew cask install the-unarchiver
brew cask install skitch
brew cask install vlc
brew install bash

# https://github.com/rgcr/m-cli
# Swiss Army Knife for macOS
brew install m-cli

#autohide dock
m dock autohide YES

#finder show extensions
m finder showextensions YES

# install marp markup editor
# https://github.com/yhatt/marp
brew cask install marp

cat << EOF > $HOME/.vimrc
:set nocompatible
syntax on
EOF

cat << EOF > $HOME/.bash_profile
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
EOF

# atom plugins and themes
apm install dracula-theme
apm install minimap
apm install git-plus

# customizations
# https://github.com/herrbischoff/awesome-osx-command-line

# Disable dock bounce
defaults write com.apple.dock no-bouncing -bool false && \
killall Dock

# Show All files in finder
defaults write com.apple.finder AppleShowAllFiles true

# Restore Default File Visibility
# defaults write com.apple.finder AppleShowAllFiles false

# show path in finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Disable auto correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# disable sound on boot
sudo nvram SystemAudioVolume=" "

# save screenshots to screenshots directory
mkdir ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop && killall SystemUIServer

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Switch to using brew-installed bash as default shell
#if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
#  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
#  chsh -s /usr/local/bin/bash;
#fi;
#
# gonna try zsh for a bit


# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true


# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
