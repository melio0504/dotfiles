" Set core Vim options
set nocompatible
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set mouse=a

" UI and visual settings
set number
set relativenumber
set termguicolors
set background=dark
set scrolloff=8
set hlsearch

" Clipboard and leader key
set clipboard=unnamedplus
let mapleader=" "

" Enable syntax and filetype detection
syntax enable
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Undo History
Plug 'mbbill/undotree'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Git Integration
Plug 'tpope/vim-fugitive'

" Statusline
Plug 'itchyny/lightline.vim'

" Commenting
Plug 'tpope/vim-commentary'

" Color Scheme
Plug 'morhetz/gruvbox'

call plug#end()

let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_transparent_bg = 1
colorscheme gruvbox

" Make background transparent for terminal themes
if has("gui_running") || &termguicolors
  highlight Normal guibg=NONE
  highlight NonText guibg=NONE
endif
