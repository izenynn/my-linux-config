#!/bin/bash

export "HOME=/home/[YOUR_USER_HERE]"

########## GLOBAL ##########
apt update && apt upgrade -y
apt update

########## ALACRITTY ##########
add-apt-repository ppa:mmstick76/alacritty
apt install alacritty -y

########## ZSH ##########
apt install zsh -y
#chsh -s $(which zsh)

######### OH MY ZSH ##########
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

########## MANUAL STEPS ##########
echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Run \"chsh -s \$(which zsh)\"
# 2. Run \"zsh\"
# 3. Configure oh-my-zsh
# NOTE: You will have to logout later to apply the shell change"

echo
read -n 1 -p "Press any key to continue..." tmp
echo; echo

########## ZSH CONF ##########

# copy conf files
cp ./conf/.zshrc "$HOME"/

# welcome message!
apt install lolcat figlet -y
cp -r ./conf/figlet-fonts "$HOME"/git/

########## VIM ##########

# install
apt install vim neovim -y

# dependencies
apt install curl wget ccls -y

# additionals tools (bear)
apt install bear -y
# additionals tools (exa)
wget -c "http://old-releases.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb"
apt install "./exa_0.9.0-4_amd64.deb" -y
rm "./exa_0.9.0-4_amd64.deb"

# move config files
cp ./conf/.vimrc "$HOME"/
cp -r ./conf/.vim "$HOME"/
cp -r ./conf/.config "$HOME"/

# install vim-plug
curl -fLo "$HOME"/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

########## MANUAL STEPS ##########
echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Go to \"~/.config/.vim\"
# 2. Open with nvim the file \"plugins.vim\"
# 3. Type \":PlugInstall\" in the nvim console"

echo
read -n 1 -p "Press any key to continue..." tmp
echo; echo

#========= METHOD 1 OF INSTALLING NODE ========#

prev=$(pwd)
cd ~
#curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
curl -sL https://deb.nodesource.com/setup_16.x | bash -
sudo apt install nodejs npm -y
cd $prev

npm install --global yarn

echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Go to \"~/.vim/plugged/coc.nvim\"
# 4. Run \"yarn install\"
# 5. Run \"yarn build\"
# 6. Run \"exit\" and return to zsh"

echo
read -n 1 -p "Press any key to continue..." tmp
echo; echo

#==============================================#
#========= METHOD 2 OF INSTALLING NODE ========#

## install coc.vim
#apt install nodejs npm -y
#
########### MANUAL STEPS ##########
#
#echo
#echo "########## MANUAL STEPS ##########"
#echo "# 1. Run \"zsh\"
## 2. Run \"exec zsh\"
## 3. Run \"curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash\""
#
#echo
#read -n 1 -p "Press any key to continue..." tmp
#echo; echo
#
#npm install --global yarn
#
#echo
#echo "########## MANUAL STEPS ##########"
#echo "# 1. Run \"bash\"
## 2. Run \"nvm install v16\"
## 3. Go to \"~/.vim/plugged/coc.nvim\"
## 4. Run \"yarn install\"
## 5. Run \"yarn build\"
## 6. Run \"exit\" and return to zsh"
#
#echo
#read -n 1 -p "Press any key to continue..." tmp
#echo; echo

#==============================================#

########## FINISH! ##########
echo
echo "########## FINISH! ##########"
