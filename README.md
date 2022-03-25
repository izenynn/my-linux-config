# linux-config

## Info

My config for my linux machines.

The purpouse of this repo is to quickly config `zsh` and `neovim` in new machines, beacuse of this I of course made a bash script to automate this process.

## How to install

0. Install git
```sh
sudo apt install git
```

1. Clone the repo (with submodules):
```sh
git clone --recurse-submodules git@github.com:izenynn/linux-config.git
```

2. Change line 5 of `conf/.zshrc` to match your user home, and line 3 in `setup.sh`.

3. To install just run the script `setup.sh` with sudo (for installations) and follow the instructions (some parts must be done manually):
```sh
chmod +x ./setup.sh
sudo ./setup
```

NOTE: If you only want to install `neovim` with the plugins, or only `zsh`, comment the respective part in the `setup.sh` file. Thx u :3

##
[![forthebadge](https://forthebadge.com/images/badges/0-percent-optimized.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/works-on-my-machine.svg)](https://forthebadge.com)
