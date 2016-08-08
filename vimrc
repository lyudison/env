set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Quick search for files
Plugin 'ctrlpvim/ctrlp.vim'
" Status bar
Plugin 'vim-airline/vim-airline'
" Handy comment
Plugin 'vim-scripts/tComment'
" File system navigation
Plugin 'scrooloose/nerdtree'
" Pair parenthesis/bracket/brace
Plugin 'jiangmiao/auto-pairs'
" Highlight corresponding tag
Plugin 'gregsexton/MatchTag'
" Extend HTML tag
Plugin 'mattn/emmet-vim'
" Syntax highlight for typescript
Plugin 'leafgarland/typescript-vim'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" Text search
Plugin 'rking/ag.vim'
" Typescript's defintion jump, header import, etc.
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
" Show editted lines in the gutter
Plugin 'airblade/vim-gitgutter'
" Semantic auto-completion
Plugin 'Valloric/YouCompleteMe'
" Syntax highlight for JSX
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Syntax highlight for Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable syntax highlight
syntax on

" show line number
set number

" Smart case
set smartcase
set ignorecase

" Global clipboard
set clipboard=unnamed

" Use 2 spaces to indent
filetype indent on
set expandtab
set ts=2 sts=2
set shiftwidth=2

" Python 3 completion
" let g:ycm_python_binary_path = '/usr/bin/python3'

" airline: show status bar all the time
set laststatus=2

" Enable HTML tags generation
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Autocomplete for js libs
let g:used_javascript_libs = 'angularjs, angularui, angularrouter'

" Ag settings
let g:ackprg = 'ag --vimgrep'

" More natural split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural new split side
set splitright
set splitbelow

" Ignore files in .gitignore when using Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Set leader key
let mapleader = ','

" Quickfix window
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
