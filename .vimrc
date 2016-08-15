"
" A minimal vimrc.
"

" Plug
let s:bundle_dir    = '~/.vim/bundle'

let g:plug_shallow  = 0
let g:plug_window   = 'enew'
let g:plug_pwindow  = 'vertical rightbelow new'

call plug#begin(s:bundle_dir)
Plug 'tpope/vim-sensible'
call plug#end()

set nocompatible

filetype plugin indent on   " Load plugins according to detected filetype.
syntax on                   " Enable syntax highlighting

set autoindent              " indent according to previous line
set expandtab               " use spaces instead of tabs
set softtabstop =2          " tab key indents by 2 spaces
set shiftwidth  =2          " >> indents by 2 spaces
set shiftround              " >> indents to next multiple of 'shiftwidth'

set backspace   =indent,eol,start " make backspace work as you would expect
set hidden                  " switch between buffers without having to save first
set laststatus  =2          " always show statusline
set display     =lastline   " show as much as possible of the last line

set showmode                " show current mode in command-line
set showcmd                 " show already typed keys when more are expected

set incsearch               " highlight while searching with / or ?
set hlsearch                " keep matches highlighted
set ignorecase

set ttyfast                 " faster redrawing
set lazyredraw              " only redraw when necessary

set splitbelow              " open new windows below the current window
set splitright              " open new windows right of the current window

set cursorline              " find the current line quickly
set wrapscan                " searches wrap around end-of-file
set report      =0          " always report changed lines
set synmaxcol   =200        " only highlight the first 200 columns
set mouse       =a          " enable mouse support
set scrolloff   =4
set sidescroll  =5
set smartcase

set list                    " show non-printable characters
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

" mappings
inoremap jj       <esc>