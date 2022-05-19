# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

########## MY CODE ##########

# pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# welcome message
echo
#figlet -f 3d -d "$HOME/git/figlet-fonts" \\\(^^\)/ | lolcat
#figlet -f starwars -d "$HOME/git/figlet-fonts" " 0 1 " | lolcat
#figlet -f Electronic -d "$HOME/git/figlet-fonts" " 0 1 " | lolcat
#figlet -f Blocks -d "$HOME/git/figlet-fonts" " 0 1 " | lolcat
figlet -f Doh -d "$HOME/git/figlet-fonts" " 0 1 " | tail -n 23 | head -n 16 | lolcat

#########
# vi mode
#########

bindkey -v
export 'EDITOR=nvim'

# switch to command mode with jj
bindkey '^j' vi-cmd-mode

# `v` is already mapped to visual mode, so we need to use a different key to
# open Vim
bindkey -M vicmd "^V" edit-command-line

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# incremental search in insert mode
bindkey "^F" history-incremental-search-forward
bindkey "^R" history-incremental-search-backward

# beginning search with arrow keys and j/k
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# beginning search in insert mode, redundant with the up/down arrows above
# but a little easier to press.
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward

# incremental search in vi command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
# navigate matches in incremental search
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

# utils
alias 'c=cd'
alias 'ls=exa'
alias 'bat=batcat'

# neo vim
alias 'n=nvim'
alias 'nn=nvim .'
alias 'ns=nvim src/'
alias 'ni=nvim inc/'
alias 'nk=nvim Makefile'
alias 'nr=nvim README.md'
alias 'nb=nvim ~/.bashrc'
alias 'nz=nvim ~/.zshrc'

# make
alias 'm=make'
alias 'mr=make re'
alias 'mc=make clean'
alias 'mf=make fclean'
alias 'ms=make sanitize'
alias 'mn=make norme'

# clipboard
#alias 'c=xclip'
alias 'x=xclip'
alias 'v=xclip -o'

# dev
alias 'gccw=gcc -Wall -Werror -Wextra'
alias 'gccs=gcc -Wall -Werror -Wextra -pedantic -g3 -fsanitize=address -fsanitize=leak -fsanitize=undefined -fsanitize=bounds -fsanitize=null'

alias 'gpp=g++'
alias 'gppw=g++ -Wshadow -Wall -Werror -Wextra'
alias 'gpps=g++ -Wshadow -Wall -Werror -Wextra -pedantic -g3 -fsanitize=address -fsanitize=leak -fsanitize=undefined -fsanitize=bounds -fsanitize=null'

alias 'valgrind-full=valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind-out.txt'

# utils
alias 'ez=exec zsh'
alias 'eb=exec bash'
function mkcd() {
	mkdir -p -- "$1" && cd -P -- "$1"
}
function cl() {
	cd -P -- "$1" && ls -alF
}
function rmk(){
	scrub -p dod $1
	shred -zun 10 -v $1
}
function hg() {
    history | grep "$1" | cut -f2- -d ' ';
}

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# norminette
#function norm-venv() {
#	source "$HOME/Documents/42/norm-venv/bin/activate"
#}

# docker remove all
alias 'docker-rm-all=docker rm $(docker ps -a -q -f status=exited)'

# bspwm reload
alias 'reload-bspwm=xdotool key "Super_L+alt+r"'

# Created by `pipx` on 2022-05-08 22:42:11
export PATH="$PATH:/home/user/.local/bin"

# go
export GOPATH="/usr/local/go/bin"
export GOBINPATH="$HOME/go/bin"
export PATH="$PATH:$GOPATH:$GOBINPATH"
