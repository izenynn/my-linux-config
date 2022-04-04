########## MY CODE ##########

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# oh-my-zsh alias
#alias '-=cd -'
alias '..=cd ..'
alias '...=cd ../..'
alias '....=cd ../../..'
alias '.....=cd ../../../..'
alias '......=cd ../../../../..'
alias '1=cd -'
alias '2=cd -2'
alias '3=cd -3'
alias '4=cd -4'
alias '5=cd -5'
alias '6=cd -6'
alias '7=cd -7'
alias '8=cd -8'
alias '9=cd -9'
alias '_=sudo'
alias 'afind=ack -il'
alias 'd=dirs -v | head -10'
alias 'g=git'
alias 'ga=git add'
alias 'gaa=git add --all'
alias 'gapa=git add --patch'
alias 'gau=git add --update'
alias 'gb=git branch'
alias 'gba=git branch -a'
alias 'gbd=git branch -d'
alias 'gbda=git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias 'gbl=git blame -b -w'
alias 'gbnm=git branch --no-merged'
alias 'gbr=git branch --remote'
alias 'gbs=git bisect'
alias 'gbsb=git bisect bad'
alias 'gbsg=git bisect good'
alias 'gbsr=git bisect reset'
alias 'gbss=git bisect start'
alias 'gc=git commit -v'
alias 'gc!=git commit -v --amend'
alias 'gca=git commit -v -a'
alias 'gca!=git commit -v -a --amend'
alias 'gcam=git commit -a -m'
alias 'gcan!=git commit -v -a --no-edit --amend'
alias 'gcans!=git commit -v -a -s --no-edit --amend'
alias 'gcb=git checkout -b'
alias 'gcd=git checkout develop'
alias 'gcf=git config --list'
alias 'gcl=git clone --recursive'
alias 'gclean=git clean -fd'
alias 'gcm=git checkout master'
alias 'gcmsg=git commit -m'
alias 'gcn!=git commit -v --no-edit --amend'
alias 'gco=git checkout'
alias 'gcount=git shortlog -sn'
alias 'gcp=git cherry-pick'
alias 'gcpa=git cherry-pick --abort'
alias 'gcpc=git cherry-pick --continue'
alias 'gcs=git commit -S'
alias 'gcsm=git commit -s -m'
alias 'gd=git diff'
alias 'gds=git diff --staged'
alias 'gdca=git diff --cached'
alias 'gdct=git describe --tags `git rev-list --tags --max-count=1`'
alias 'gdt=git diff-tree --no-commit-id --name-only -r'
alias 'gdw=git diff --word-diff'
alias 'gf=git fetch'
alias 'gfa=git fetch --all --prune'
alias 'gfo=git fetch origin'
alias 'gg=git gui citool'
alias 'gga=git gui citool --amend'
alias 'ggpull=git pull origin $(git_current_branch)'
alias 'ggpur=ggu'
alias 'ggpush=git push origin $(git_current_branch)'
alias 'ggsup=git branch --set-upstream-to=origin/$(git_current_branch)'
alias 'ghh=git help'
alias 'gignore=git update-index --assume-unchanged'
alias 'gignored=git ls-files -v | grep "^[[:lower:]]"'
alias 'git-svn-dcommit-push=git svn dcommit && git push github master:svntrunk'
alias 'gk=\gitk --all --branches'
alias 'gke=\gitk --all $(git log -g --pretty=%h)'
alias 'gl=git pull'
alias 'glg=git log --stat'
alias 'glgg=git log --graph'
alias 'glgga=git log --graph --decorate --all'
alias 'glgm=git log --graph --max-count=10'
alias 'glgp=git log --stat -p'
alias 'glo=git log --oneline --decorate'
alias 'globurl=noglob urlglobber '
alias 'glog=git log --oneline --decorate --graph'
alias 'gloga=git log --oneline --decorate --graph --all'
alias 'glol=git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias 'glola=git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'
alias 'glp=_git_log_prettily'
alias 'glum=git pull upstream master'
alias 'gm=git merge'
alias 'gmom=git merge origin/master'
alias 'gmt=git mergetool --no-prompt'
alias 'gmtvim=git mergetool --no-prompt --tool=vimdiff'
alias 'gmum=git merge upstream/master'
alias 'gp=git push'
alias 'gpd=git push --dry-run'
alias 'gpoat=git push origin --all && git push origin --tags'
alias 'gpristine=git reset --hard && git clean -dfx'
alias 'gpsup=git push --set-upstream origin $(git_current_branch)'
alias 'gpu=git push upstream'
alias 'gpv=git push -v'
alias 'gr=git remote'
alias 'gra=git remote add'
alias 'grb=git rebase'
alias 'grba=git rebase --abort'
alias 'grbc=git rebase --continue'
alias 'grbi=git rebase -i'
alias 'grbm=git rebase master'
alias 'grbs=git rebase --skip'
alias 'grep=grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias 'grh=git reset HEAD'
alias 'grhh=git reset HEAD --hard'
alias 'grmv=git remote rename'
alias 'grrm=git remote remove'
alias 'grset=git remote set-url'
alias 'grt=cd $(git rev-parse --show-toplevel || echo ".")'
alias 'gru=git reset --'
alias 'grup=git remote update'
alias 'grv=git remote -v'
alias 'gsb=git status -sb'
alias 'gsd=git svn dcommit'
alias 'gsi=git submodule init'
alias 'gsps=git show --pretty=short --show-signature'
alias 'gsr=git svn rebase'
alias 'gss=git status -s'
alias 'gst=git status'
alias 'gsta=git stash save'
alias 'gstaa=git stash apply'
alias 'gstc=git stash clear'
alias 'gstd=git stash drop'
alias 'gstl=git stash list'
alias 'gstp=git stash pop'
alias 'gsts=git stash show --text'
alias 'gsu=git submodule update'
alias 'gts=git tag -s'
alias 'gtv=git tag | sort -V'
alias 'gunignore=git update-index --no-assume-unchanged'
alias 'gunwip=git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias 'gup=git pull --rebase'
alias 'gupv=git pull --rebase -v'
alias 'gwch=git whatchanged -p --abbrev-commit --pretty=medium'
alias 'gwip=git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
alias 'history=fc -l 1'
alias 'l=ls -alhF'
alias 'la=ls -lAhF'
alias 'll=ls -lhF'
alias 'ls=ls -GF'
alias 'lsa=ls -lahF'
alias 'md=mkdir -p'
alias 'please=sudo'
alias 'po=popd'
alias 'pu=pushd'
alias 'rd=rmdir'
alias 'run-help=man'
alias 'which-command=whence'

# welcome message
echo
figlet -f 3d -d "$HOME/git/figlet-fonts" \\\(^^\)/ | lolcat
echo

# uwu
#alias "uwu=figlet -f 3d -d $HOME/git/figlet-fonts uwu | lolcat"
function uwu() {
	for i in $HOME/git/figlet-fonts/*; do
		figlet -f $i uwu > /dev/null 2>&1
		if [[ $? != 0 ]]; then
			continue
		fi
		figlet -f $i uwu | lolcat
		#echo ${i%/*} # print path
		#echo ${i##*/} # print filename
		#echo "=================================================="
	done
}

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
alias 'nb=n ~/.bashrc'
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
alias 'eb=exec bash'
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
