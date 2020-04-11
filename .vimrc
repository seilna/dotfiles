set nocompatible
filetype off                

if has("termguicolors")
    set termguicolors
endif
" set the runtime path to include Vundle and initialize


set rtp+=$HOME/.nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/csv.vim'
Plugin 'foosoft/vim-argwrap'
Plugin 'blueyed/vim-diminactive'
Plugin 'rhysd/conflict-marker.vim'
" Plugin 'vim-syntastic/syntastic'
call vundle#end()           
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'heavenshell/vim-pydocstring'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'valloric/youcompleteme', { 'do': 'python ./install.py --clang-completer' }
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline-themes'
Plug 'psliwka/vim-smoothie'
Plug 'rainglow/vim'
Plug 'RRethy/vim-illuminate'
call plug#end()

colorscheme seil_colorscheme
let g:pymode_python = 'python3'
let g:pymode_options_colorcolumn = 0
let g:pymode_lint_error_symbol = 'X'
let g:pymode_lint_comment_symbol = '✗'
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace(context=5)'

let g:ycm_server_python_interpreter = '/opt/conda/bin/python'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let python_highlight_all=1
let g:jedi#popup_select_first = 0

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger="<Tab>"

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']

let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

let g:Illuminate_delay = 100

nnoremap <c-k> :ArgWrap<CR>
inoremap <silent> <c-s> <Esc>:w<CR>
nnoremap <silent> <c-s> :w<CR>
inoremap <silent> <c-w> <Esc>:wq<CR>
nnoremap <silent> <c-w> :wq<CR>
inoremap <silent> <c-q> <Esc>:q!<CR>
nnoremap <silent> <c-q> :q!<CR>


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
