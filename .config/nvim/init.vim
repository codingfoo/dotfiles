" ---------------------------------------------------------------------------
" Plugins
" ---------------------------------------------------------------------------

lua require('plugins')

"neovim/nvim-lspconfig
"nvim-treesitter/nvim-treesitter, {'do': ':TSUpdate'}  " We recommend updating the parsers on update


" Recommended plugins
" nvim-lua/plenary.nvim

" nvim-telescope/telescope.nvim
"nnoremap <leader>t <cmd>Telescope find_files<cr>
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" altercation/solarized

" tpope/vim-sensible

" Collection of language syntax files
" sheerun/vim-polyglot

" Linting
" w0rp/ale

" Solarized theme
" altercation/vim-colors-solarized

" vim-airline/vim-airline

" vim-airline/vim-airline-themes

" vim-unimpaired

" vim-surround

" vim-commentary

" vim-textobj

" vim-easymotion

" (zencoding)

" ---------------------------------------------------------------------------
" Settings
" ---------------------------------------------------------------------------
set autowrite                   " Writes on make/shell commands

" Write on focus lost
:au FocusLost * silent! wa

" Backups & Files
"set backupdir=$HOME/.config/nvim/backups    " Where backups will go.
"set directory=$HOME/.config/nvim/tmp        " Where temporary files will go.
set nobackup                    " Don't make a backup before overwriting a file.
set nowritebackup               " And again.
"set undodir=$HOME/.config/nvim/tmp/.VIM_UNDO_FILES

" Search
set ignorecase      " Case-insensitive searching...
set smartcase       " ...except case sensitive when search has capital
set showmatch       "
set hlsearch        " Highlight search terms...
set incsearch       " ...dynamically as they are typed.
set gdefault        " don't need /g after :s or :g, default replace on entire line not just first instance

" Tabs and Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab                       " Use spaces instead of tabs
set list listchars=tab:\ \ ,trail:· " Show trailing whitespace

" Completion
set wildmenu                        " Make tab completion show a menu
set wildmode=list:longest,list:full " First: complete to the point of ambiguity and list, second: complete full of first completion and list

set wildignore+=*.o,*.out,*.rbo,*.gem,*.pyc,*.elc,*.obj,*.class,.git,.svn,*.rbc,*.log
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*/.git/*,*/_build/*,*/tmp/*
set wildignore+=*.swp,*~,._*


" Use perl/python compatible regex in search rather than vim's regex
nnoremap / /\v
vnoremap / /\v
cmap     s/ s/\v


set encoding=utf-8

set relativenumber              " Use relative numbers, the absolute file line number is in the status bar
set number                      " Use this with realtive line number to show the absolute line number on current line

"set noesckeys                   " Prevent slight delay of use o or O commands

if has('persistent_undo')
  set undofile                    " Persist undo info about a file across exits
endif

set virtualedit=block           " Allows block selection to go past the end of a line

set scrolloff=3                 " Scroll 3 lines instead of 1 when cursor goes off screen

set showmode                    " Show current mode on bottom line

set showcmd                     " Show (incomplete) command in status line

set hidden                      " Allow switching buffers without writing to disk

set visualbell                  " Make bell visible instead of audible

" set cursorline                  " Make current line visible

set ttyfast                     " Speed up redrawing operations

set ruler                       " Show line, column, %, in status line

set mousehide                   " Hide mouse while typing

set shortmess=atI               " Stifle many interruptive prompts

set confirm                     " Use confirm instead of aborting an action

set lazyredraw                  " Don't update the display while executing macros

set mat=5                       " Duration to show matching brace (1/10 sec)

setlocal spell spelllang=en_us  " Set spelling language
set nospell                     " Turn off spelling, turn on as needed

" Status Line
set laststatus=2 " Always show the statusline
set cmdheight=1  " Set the command area to be one line

" ---------------------------------------------------------------------------
" Plugins config
" ---------------------------------------------------------------------------
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" ----------------------------------------------------------------------------
"  Key bindings / Mappings
" ----------------------------------------------------------------------------
let mapleader = " "
let maplocalleader = "  "

"""Function key mappings
" f1 is help

map <leader>e :edit $MYVIMRC<CR>
map <leader>r :source $MYVIMRC<CR>
map <leader>h :noh<CR>



" ---------------------------------------------------------------------------
" Auto commands / Filetype associations
" ---------------------------------------------------------------------------
" automatically reload vimrc when it's saved
au BufWritePost .config/nvim/init.vim so ~/.config/nvim/init.vim

au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,Vagrantfile,Procfile,*.rake,config.ru}     set ft=ruby
au BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit

" ---------------------------------------------------------------------------
"  Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre *.py,*.rb,*.js,*.ex,*.exs :call <SID>StripTrailingWhitespaces()


" ----------------------------------------------------------------------------
"  Theme
" ----------------------------------------------------------------------------
set background=dark
" The silent! silences any errors if the theme is not available
silent! colorscheme solarized
