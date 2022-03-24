#!/bin/sh

########## ZSH ##########

# copy conf files
cp ./.zshrc ~/
cp ./.vimrc ~/
cp -r ./.config ~/
cp -r ./.vim ~/

# welcome message!
apt install lolcat figlet
cp -r figlet-fonts ~/git/

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
