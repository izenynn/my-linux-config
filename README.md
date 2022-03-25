# my-linux-config

## Info

My config for my linux Debian based machines.

The purpouse of this repo is to quickly config `alacritty`, `zsh`, `neovim` with plugins, for my new machines, beacuse of this I of course made a bash script to automate the process.

There are some steps that must be done manually, the script will pop up a message and wait for you to do the steps, please read the message carefully.

*Based on [ander-lab config](https://github.com/ander-lab/config)*

## How to setup the config

1. Install git
```sh
sudo apt install git
```

2. Clone the repo (with submodules):
```sh
git clone --recurse-submodules https://github.com/izenynn/my-linux-config.git
```

3. Configure date and time:
```sh
sudo dpkg-reconfigure tzdata
```

4. To install just run the script `setup.sh` with sudo (for installations) and follow the instructions (some parts must be done manually):
```sh
chmod +x ./setup.sh
sudo ./setup
```

5. Open another terminal to do the manual steps, and left the script running on the other one.

6. Wait for the script to finish or to pop up some manual steps.

##
[![forthebadge](https://forthebadge.com/images/badges/0-percent-optimized.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/made-with-crayons.svg)](https://forthebadge.com)
