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

# only real hackers/developers settings
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

# burpsuite
#alias 'burpsuite=java --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.desktop/javax.swing=ALL-UNNAMED -jar /usr/bin/burpsuite'
