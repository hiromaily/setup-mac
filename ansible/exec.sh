#!/bin/bash

# Setting Homebrew Cask Option
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.zprofile
source ~/.zprofile

# Execute Playbook
ansible-playbook -i hosts -vv mac-setup.yml


