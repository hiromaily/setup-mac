#!/bin/bash

# As prerequisite, prepare files as beloww
# .netrc
# .vimrc
# .zshrc
#
# This shell script have to be set in inbisiblefile directory
###############################################################################
#create directory
###############################################################################
#directory
#mkdir ~/work

###############################################################################
# zsh
###############################################################################
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
chsh -s /usr/local/bin/zsh

# copy .zshrc
cp .zshrc ~/
cp .zprofile ~/
source ~/.zshrc

#####
cp -r .vim ~/
cp .vimrc ~/
cp .viminfo ~/

cp -r .aws ~/
cp -r .ssh ~/
cp .netrc ~/

#####
chmod 600 id_rsa
chmod 644 config
chmod 644 id_rsa.pub
chmod 644 known_hosts
chmod 644 macair_id_rsa
chmod 644 betta_id_rsa.pem
chmod 644 betta_id_rsa.ppk

###############################################################################
# vim
###############################################################################
#.vimrc
#cp .vimrc ~/
#
#cd ~/work
#git clone https://github.com/tomasr/molokai
#mkdir -p ~/.vim/colors
#cp ./molokai/colors/molokai.vim ~/.vim/colors/
#rm -rf ./molokai
#cd ~/

# vimのNeoBundleは非推奨になったらしい
# http://qiita.com/poad1010/items/de16d9a1af78687c87cf

#curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
#sh ./install.sh
