set nocompatible


call plug#begin('~/.vim/plugged')
Plug 'heavenshell/vim-pydocstring'
call plug#end()

set ls=2
set nu
set ignorecase
set smartcase

set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line

set tabstop=4
set shiftwidth=4
set softtabstop=4

set expandtab
set incsearch
set hlsearch

autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\ exe "normal g`\"" |
			\ endif

if has("syntax")
	syntax on
endif
