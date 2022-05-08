# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PATH=~/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:$PATH

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	    color_prompt=yes
    else
	    color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    #PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"
    PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\e[0m\]"
else
    #PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
    PS1='┌──[\u@\h]─[\w]\n└──╼ '
fi

# Set 'man' colors
if [ "$color_prompt" = yes ]; then
	man() {
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
fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    #PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"
    PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'
alias em='emacs -nw'
alias dd='dd status=progress'
alias _='sudo'
alias _i='sudo -i'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

########## MY CODE ##########

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#. "$HOME/.cargo/env"

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
alias 'l=lsd -alhF'
alias 'la=lsd -lAhF'
alias 'll=lsd -lhF'
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

# set vi mode like a real developer
set -o vi
export 'EDITOR=nvim'

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
