"===================Key Remappings==========
inoremap jk <ESC>

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader = "<Space>"

"Use vim settings rather than vi settings
set nocompatible

" ================ General Config ====================

set number                      "Line numbers are good
set relativenumber
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set modelines=0
set encoding=utf-8
set ruler
set laststatus=2
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set linebreak
set nolist
set colorcolumn=110
set spell spelllang=en_us
set path=$PQD/**                    "Default path to be current dir, help in searching files
set nosmartindent                   "Use filetype-specific plugins and indentation
au BufRead,BufNewFile *.html,*.css set textwidth=0  "Turn off automatic line breaking in html and css

" Use two-space tabs for javascript
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType scala setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4

" Ignore compiled python
set wildignore+=*.pyc

" Open files using Command-T - shortcut
nmap <Leader> f: CommandT

" Remap movement between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" split windows
nnoremap <A-h> split
nnoremap <A-v> vsplit

" Remap window rearrangement
nmap <C-m>h <C-w>H
nmap <C-m>j <C-w>J
nmap <C-m>k <C-w>K
nmap <C-m>l <C-w>L

" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 4gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>0 :tablast<cr>


" Aesthetics

" colorscheme solarized
set background=light

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" NOT WORKING: Didnt work when yanked right out of YADR
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups


" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:Â·

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points


" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
