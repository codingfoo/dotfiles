set nocompatible		" Turn off backwards incompatiblity with vi

setlocal spell spelllang=en_us " Set spelling language
set nospell

set hidden	" Allow switching buffers without writing to disk

set history=1000		" Keep a longer history

runtime macros/matchit.vim	" Enable extended % matching

set wildmenu			" Make tab completion show a menu
set wildmode=list:longest	" Complete only up to the point of ambiguity
set wildignore=*.o,*.pyc,*.elc

set scrolloff=3			" Scroll 3 lines instead of 1 when cursor goes off screen

set ruler			" Show line, column, % at bottom of window
" set number			" Show line numbers

set backspace=indent,eol,start 	" Intuitive backspacing in insert mode

set shortmess=atI 		" Stifle many interruptive prompts

set visualbell 			" Make bell visible instead of audible

set showcmd 			" Show state of keyboard input

set showmode 			" Current mode is displayed on bottom line

set mousehide     " Hide mouse while typing

set gdefault      " don't need /g after :s or :g

set encoding=utf-8

" use confirm instead of aborting an action
set confirm

set hlsearch 			" Highlight search terms...
set incsearch 			" ...dynamically as they are typed.
set ignorecase			" Searching case sensitive only when search has capital
set smartcase
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent


" Key bindings / Mappings
" Alternatives to ESC:

" Fix command typos (stolen from Adam Katz)
nmap ; :

" ` is more useful than ' but less accessible.
nnoremap ' `
nnoremap ` '

" mapleader
let mapleader = ","

map <Leader>s :source $MYVIMRC<CR>
map <Leader>v :e $MYVIMRC<CR>

" Backups & Files
set backup			" Enable creation of backup file.
set backupdir=~/.vim/backups 	" Where backups will go.
set directory=~/.vim/tmp     	" Where temporary files will go.
let g:yankring_history_file = ".yankring_history" " Where the yankring plugin history should go

" Vim Stuff
set title			" vim will set title
set background=dark

" Graphical Stuff
if has('gui_running')
  set guioptions-=r 		" No right scrollbar
  set guioptions-=l 		" No left scrollbar
  set guioptions-=b	 	" No bottom scrollbar
  set guioptions-=T	 	" No toolbar
  set guioptions+=c 		" Use console dialogs where possible
  colorscheme twilight
else
  set background=dark
  colorscheme desert
end
