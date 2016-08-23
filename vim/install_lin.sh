#!/bin/bash
if [ -x /usr/bin/apt-get ]; then
    echo 'Detected Debian based distro'
    sudo apt-get install git vim-gnome silversearcher-ag
fi

if [ ! -d ~/git ]; then
    mkdir ~/git
fi
cd ~/git/
git clone https://github.com/powerline/fonts powerline-fonts
cd powerline-fonts
./install.sh
