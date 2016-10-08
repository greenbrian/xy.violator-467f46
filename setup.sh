#!/bin/bash

# debug
set -xv

# update brew
brew upate
brew upgrade

# mac setup

brew cask install atom
brew cask install whatsapp
brew install vim
brew install git
brew install curl
brew install python
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install iterm2
brew install bash-completion

cat << EOF > $HOME/.vimrc
:set nocompatible
syntax on
EOF

cat << EOF > $HOME/.bash_profile
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
EOF
