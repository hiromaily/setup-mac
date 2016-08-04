#!/bin/bash

# As prerequisite, prepare files as beloww
# .netrc
# .vimrc
# .zshrc

###############################################################################
#create directory
###############################################################################
#directory
mkdir ~/work


###############################################################################
# zsh
###############################################################################
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
chsh -s /usr/local/bin/zsh

# copy .zshrc
cp .zshrc ~/
source ~/.zshrc


###############################################################################
# vim
###############################################################################
#.vimrc
cp .vimrc ~/

cd ~/work
git clone https://github.com/tomasr/molokai
mkdir -p ~/.vim/colors
cp ./molokai/colors/molokai.vim ~/.vim/colors/
rm -rf ./molokai
cd ~/

# vimのNeoBundleは非推奨になったらしい
# http://qiita.com/poad1010/items/de16d9a1af78687c87cf

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
