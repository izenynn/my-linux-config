# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME=""

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

########## PURE PROMPT ##########

#fpath+=$HOME/.zsh/pure
#autoload -U promptinit; promptinit
#prompt pure

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

# welcome message
echo
figlet -f 3d -d "$HOME/git/figlet-fonts" \\\(^^\)/ | lolcat
echo

# utils
alias 'c=cd'
alias 'ls=exa'
alias 'bat=batcat'

# neo vim
alias 'n=nvim'
alias 'nn=nvim .'
alias 'ns=n src/'
alias 'ni=n inc/'
alias 'nk=n Makefile'
alias 'nr=n README.md'
alias 'nz=n ~/.zshrc'

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
function mkcd() {
	mkdir -p -- "$1" && cd -P -- "$1"
}
function cl() {
	cd -P -- "$1" && ls -alF
}

# norminette
#function norm-venv() {
#	source "$HOME/Documents/42/norm-venv/bin/activate"
#}

# todo and fixme
function td() {
	# array of words to search
	declare -a arr=("TODO" "FIXME")

	# colors
	local nocol='\033[0m'
	local red='\033[31m'
	local yel='\033[33m'
	local blu='\033[34m'

	# check number of arguments is 0 or 1
	if [[ $# -gt 1 ]]; then
		echo -ne "${red}Error: too many arguments${nocol}\n"
		echo -ne "Usage: td [DIRECTORY](default is the actual directory)\n"
		return 1
	fi

	# get which dir to search on
	if [ -z "$1" ]; then
		dir="./"
	else
		if [ -d "$1" ]; then
			dir="$1"
		else
			echo -ne "${red}Error: ${1}: No such file or directory${nocol}\n"
			return 1
		fi
	fi

	# get array first element index, 0 or 1
	local x=(1 0)
	local start_idx=${x[1]}

	# get array len
	local arr_len=${#arr[@]}
	if [[ $start_idx -eq 1 ]]; then
		((arr_len++))
	fi

	# iterate all the array elements
	for (( i=start_idx; i<${arr_len}; i++ )); do
		# print an extra '\n' if it is not the first search
		if [[ $i -gt $start_idx ]]; then
			echo -ne "\n"
		fi
		# print the word we are goint to search
		echo -ne "${yel}${arr[$i]}${nocol}\n"
		# grep the word
		output=`grep -rn --color=always -- ${arr[$i]} "$dir"`
		# print output
		if [ -z "$output" ]; then
			output="${blu}no matches found.${nocol}"
		fi
		echo -ne "${output}\n"
	done

	# return :D
	return 0
}

# get open fd of a process
function ofd() {
	local pid=$(pidof "$1")
	if [ -z "$pid" ]; then
		echo "Error: process not found"
		return 1
	fi
	ls -la /proc/${pid}/fd
	return 0
}

# kill pid
function kp() {
	kill -s KILL $1
}

# kill
function k() {
	local pids=($(pidof "$1"))

	if [ -z "$pids" ]; then
		echo "Error: process not found"
		return 1
	fi

	local arr=($(echo "$pids" | tr " " "\n"))

	for i in "${arr[@]}"; do
		kill -s KILL "$i"
	done

	return 0
}

# get .o dump
function get-dump() {
	if [[ -z $1 ]] || [[ $2 ]]; then
		echo "Usage: $0 [OBJECT_FILE]" >&2
		return 1
	fi
	if [[ $1 == "-h" ]] || [[ $1 == "--help" ]]; then
		echo "Usage: $0 [OBJECT_FILE]"
		echo "Returns the shell code of a C compiled object file."
		return 0
	fi
	objdump -d $1 | grep -Po '\s\K[a-f0-9]{2}(?=\s)' | sed 's/^/\\x/g' | perl -pe 's/\r?\n//' | sed 's/$/\n/' && return 1
	return 0
}

# docker remove all
alias 'docker-rm-all=docker rm $(docker ps -a -q -f status=exited)'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rabi/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rabi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rabi/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rabi/google-cloud-sdk/completion.zsh.inc'; fi
