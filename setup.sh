#!/bin/bash

while true; do
    read -p "Enter your username: " user_tmp
	read -p "Enter your home absolute path: " home_tmp

	echo
	echo "USER=\"$user_tmp\""
	echo "HOME=\"$home_tmp\""
    read -n 1 -p "Do you want to proceed with the current USER and HOME? [y/n/R] " yn
    case $yn in
        [Yy]* ) echo; break;;
        [Rr]* ) echo; echo; echo "########## Retry ##########"; echo;;
        [Nn]* ) echo; exit;;
        * ) echo; echo; echo "########## Retry ##########"; echo;;
    esac
done

export "USER=$user_tmp"
export "HOME=$home_tmp"

# CONFIGURE USER AND HOME MANUALLY
#export "USER=[YOUR_USER_HERE]"
#export "HOME=/home/[YOUR_USER_HERE]"

########## GLOBAL ##########
apt update && apt upgrade -y
apt update

########## ALACRITTY ##########
#apt install snapd -y
#snap install alacritty --classic

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#rustup override set stable
#rustup update stable
#apt -y install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
#apt -y install cargo
#cargo install alacritty

########## ZSH ##########
apt install zsh -y

########## MANUAL STEPS ##########
echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Run: chsh -s \$(which zsh)
# 2. Run: zsh
# 3. Configure zsh
# 4. Run: \"exit\" to return to bash
# NOTE: You will have to logout later to apply the shell change.
# IMPORTANT: The next step will open zsh, just type "exit" to return to bash and see the script next step."

echo
read -n 1 -p "Press any key to continue..." tmp
echo; echo

######### OH MY ZSH ##########
apt install curl -y
sh -c "$(curl -k -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir "$HOME"/.oh-my-zsh
cp ./conf/oh-my-zsh.sh "$HOME"/.oh-my-zsh/

########## ZSH CONF ##########

# copy conf files of alacritty, nvim and coc (nvim plugin)
cp ./conf/.zshrc "$HOME"/

# welcome message!
apt install lolcat figlet -y
cp -r ./conf/figlet-fonts "$HOME"/git/

########## MANUAL STEPS ##########

echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Run: zsh
# 2. Configure oh-my-zsh (only if configure menu pop up)
# 3. Run: \"exit\" to return to bash"

echo
read -n 1 -p "Press any key to continue..." tmp
echo; echo

########## VIM ##########

# install
apt install vim neovim -y

# dependencies
apt install curl wget ccls -y

# additionals tools (bear)
apt install bear -y
# additionals tools (exa)
wget --no-check-certificate -c "http://old-releases.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb"
apt install "./exa_0.9.0-4_amd64.deb" -y
rm "./exa_0.9.0-4_amd64.deb"

# move config files
cp ./conf/.vimrc "$HOME"/
#cp -r ./conf/.vim "$HOME"/ # NO NEED TO DO THIS, LEAVE IT COMMENTED
cp -r ./conf/.config "$HOME"/

# install vim-plug
curl -k -fLo "$HOME"/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
chown -R "$USER":"$USER" "$HOME"/.vim

########## MANUAL STEPS ##########
echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Go to: ~/.config/.vim
# 2. Open with nvim the file: plugins.vim
# 3. Type: \":PlugInstall\" in the nvim console
# 4. Type: \":q\" in the nvim console multiple times to exit"

echo
read -n 1 -p "Press any key to continue..." tmp
echo; echo

#========= METHOD 1 OF INSTALLING NODE ========#

prev=$(pwd)
cd ~
curl -k -sL https://deb.nodesource.com/setup_16.x | bash -
apt update
apt install nodejs -y
#apt install npm -y
cd $prev

npm install --global yarn

echo
echo "########## MANUAL STEPS ##########"
echo "# 1. Go to: ~/.vim/plugged/coc.nvim
# 2. Run: sudo yarn install
# 3. Run: sudo yarn build"

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
## 6. Run \"exit\" to return to zsh"
#
#echo
#read -n 1 -p "Press any key to continue..." tmp
#echo; echo

#==============================================#

########## OTHER ##########
apt install gcc g++ make xclip bat -y

########## FINISH! ##########
echo
echo "########## FINISH! ##########"
