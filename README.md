# linux-config
My config for my linux machines

For Linux and macOS, just add below lines to the top of your ~/.config/nvim/init.vim
~~~
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
~~~
