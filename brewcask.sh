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
brew install ansible
brew install mercurial
brew install tree
brew install wget
brew install nmap
brew install readline
brew install tmux

# installed app list
brew -v list

# uninstall
#brew uninstall dinghy

# upgrade
#brew upgrade

 #Error: You must `brew link go` before mongodb can be installed
 #Error: The `brew link` step did not complete successfully
 # brew unlink go
 # brew link --overwrite go
 # brew link --overwrite --dry-run go
 #Error: The `brew link` step did not complete successfully
 # rm '/usr/local/bin/docker'
 # brew link --overwrite docker
 # brew link --overwrite --dry-run docker

# clean outdated
#brew cleanup


###############################################################################
# brew cask
###############################################################################
#brew uninstall --force brew-cask; brew update
#brew tap caskroom/cask

#setting directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

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
brew cask install virtualbox
brew cask install vagrant
brew cask install docker
brew cask install dropbox
brew cask install transmit

# utility
brew cask install karabiner
brew cask install google-japanese-ime
brew cask install onyx
brew cask install avast
brew cask install mplayerx
brew cask install iexplorer
brew cask install the-unarchiver
#brew cask install flux
#brew cask install gyazo
#brew cask install reflector


# info
#brew cask info docker

###############################################################################
# brew cask for home
###############################################################################
#brew cask install vuescan
#brew cask install dockertoolbox
#brew cask install transmission


# upgrade
brew upgrade
