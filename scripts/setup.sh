#!/bin/bash

#######################################
# install as of 2020
#######################################
# xcode
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# if installation failed
# sudo chown -R $(whoami):admin /usr/local

# brew pkg
brew install git
brew install vim
brew install tree
brew install wget
brew install nmap
brew install tmux
brew install readline
brew install jq
brew install go

#brew install zsh   # would be default on modern macOS
#brew install putty # open source SSH client
#brew install node.js
#brew install python
#brew install pyenv
#brew install mysql
#brew install redis
#brew install ansible
#brew install mercurial

# cask pkg
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask google-japanese-ime
brew install --cask goland 
brew install --cask github
brew install --cask slack
brew install --cask skype
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask onyx
brew install --cask avast
#brew install --cask karabiner-elements

# manual install would be better
# - karabiner-elements
# - spotify
# - transmission
# - sequel-pro
