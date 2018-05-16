#!/bin/bash

###############################################################################
# Xcode may be install in advance
###############################################################################
sudo xcodebuild -license

xcode-select --install


###############################################################################
# homebrew
###############################################################################
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# cask
brew tap caskroom/cask

# Brewfile
if [ -f ./Brewfile ]; then
    #setting directory
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"

    brew bundle
    exit 0
fi


# brew
brew install git
brew install putty
brew install vim
brew install zsh
brew install zsh-completions
brew install go
brew install node.js
brew install python
brew install pyenv
brew install mysql
brew install redis
brew install mongodb
brew install ansible
brew install mercurial
brew install tree
brew install wget
brew install nmap
brew install readline
brew install tmux
brew install jq

# installed app list
brew -v list

# uninstall
#brew uninstall dinghy

# upgrade
#brew upgrade

# clean outdated
#brew cleanup


###############################################################################
# brew cask
###############################################################################
#brew uninstall --force brew-cask; brew update
#brew tap caskroom/cask

#setting directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# development
brew cask install iterm2

# browser
brew cask install google-chrome
brew cask install firefox

#chat
brew cask install skype
brew cask install slack

# editer
brew cask install intellij-idea
brew cask install visual-studio-code
brew cask install pycharm
brew cask install sublime-text

# development
brew cask install sequel-pro
brew cask install android-file-transfer
brew cask install docker
brew cask install dropbox
brew cask install transmit

# utility
brew cask install karabiner
brew cask install google-japanese-ime
brew cask install onyx
brew cask install iexplorer
brew cask install the-unarchiver
brew cask install gyazo
#brew cask install flux
#brew cask install reflector

# require passowrd
brew cask install avast
brew cask install virtualbox
brew cask install vagrant


# info
#brew cask info docker

# search
#brew cask search intellij-idea

###############################################################################
# brew cask for home
###############################################################################
#brew cask install vuescan
#brew cask install transmission
#brew cask install mplayerx


# upgrade
brew upgrade

# check
brew doctor