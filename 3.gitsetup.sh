#!/bin/bash

###############################################################################
# Git
###############################################################################
# Config
git config --global user.name "hiromaily"
git config --global user.email hiromaily2@gmail.com
git config --global color.ui auto

# Editor
git config --global core.editor 'vim -c "set fenc=utf-8"'

# Alias
git config --global alias.al 'config --get-regexp alias'
git config --global alias.ch checkout
git config --global alias.br branch
git config --global alias.st status

git config --global alias.cm 'commit -m'
git config --global alias.coam '!f(){ git commit -am "$1";};f'

git config --global alias.ft 'fetch origin'
git config --global alias.fta 'fetch --all'
git config --global alias.pushf 'push --force-with-lease'
git config --global alias.puom 'push origin master'
git config --global alias.pufom 'push -f origin master'

git config --global alias.canadd 'reset HEAD'
git config --global alias.rs 'reset --soft HEAD~'
#git origin/masterを正として同期
git config --global alias.sym 'reset --hard origin/master'
#git上のファイルを削除(ただしファイルは残す)
git config --global alias.rmc 'rm --cached'

# log
git config --global alias.lg 'log --oneline --graph --decorate'
git config --global alias.last 'log -1 HEAD'
#最新のコミットメッセージ
git config --global alias.cmt 'log -n 1 --pretty=format:"%s"'
git config --global alias.cmt2 'log -n 1 --pretty=format:"%H"'

#追跡ブランチの確認
git config --global alias.brt 'branch -vv'
git config --global alias.bt 'rev-parse --abbrev-ref --symbolic-full-name @{u}'

#現在のブランチを表示 show branch
git config --global alias.sb 'rev-parse --abbrev-ref HEAD'

# git push origin xxxxx をワンコマンドで。
git config --global alias.cpush '!f(){ br=$(git rev-parse --abbrev-ref HEAD);git push origin "${br}";};f'

# git reset --soft HEAD, commit with previous message.
git config --global alias.recm '!f(){ cmt=$(git log -n 1 --pretty=format:%s);git reset --soft HEAD~;git commit -am "${cmt}";};f'

# 過去のコミットからファイルを表示する
git config --global alias.showhis '!f(){ id=$(git log -n $1 --pretty=format:%h);git show ${id} $2;};f'

