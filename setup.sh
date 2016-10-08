#!/bin/bash

# debug
set -xv

# update brew
brew update
brew upgrade

# mac setup

brew cask install atom
brew cask install whatsapp
brew install vim
brew install git
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
brew cask install 1password

#   https://github.com/rgcr/m-cli
#   Swiss Army Knife for macOS
brew install m-cli


#autohide dock
m dock autohide YES

#finder show extensions
m finder showextensions YES

cat << EOF > $HOME/.vimrc
:set nocompatible
syntax on
EOF

cat << EOF > $HOME/.bash_profile
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
EOF
