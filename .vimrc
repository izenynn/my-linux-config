" VIM GENERAL CONFIG
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=4
set noexpandtab
set tabstop=4

" LINE NUMBERS
set number

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set nornu | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &nu | set rnu | endif
augroup END

" SHOW TABS AND WEIRD WHITE SPACES
set list

" NVIM PLUGINS
so ~/.config/.vim/plugins.vim
so ~/.config/.vim/plugin-config.vim
so ~/.config/.vim/maps.vim

" COLOR SCHEME
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" NO IDEA WHAT THIS DOES
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" GDB
function! NvimGdbNoTKeymaps()
	tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction

let g:nvimgdb_config_override = {
	\ 'key_next': 'n',
	\ 'key_step': 's',
	\ 'key_finish': 'f',
	\ 'key_continue': 'c',
	\ 'key_until': 'u',
	\ 'key_breakpoint': 'b',
	\ 'key_tkeymaps': "NvimGdbNoTKeymaps",
	\ }

" DVORAK LAYOUT SUPPORT
"set langmap='q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?

" MORE TO ADD IN THE FURUTE!
