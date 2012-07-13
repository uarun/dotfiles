" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let mapleader = ","

" Load plugins that ship with Vim
runtime macros/matchit.vim
runtime ftplugin/man.vim

" ================ Pathogen Init ======================
call pathogen#infect()
call pathogen#helptags()

" ================ General ======================
set backspace=indent,eol,start
set history=100
set incsearch
set visualbell t_vb=
set hidden
set autoread
set nojoinspaces
set wildmode=longest,list
set nrformats=
if has('mouse')
  set mouse=a
endif

" ================ Appearance ======================
set ruler
set showcmd
set showmode
set laststatus=2
set list listchars=tab:▸\ ,trail:·
set number

" When the terminal has colors, enable syntax+search highlighting
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" ================ Disable swapfile and backup ================
set nobackup
set noswapfile

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.

silent !mkdir ~/.vimundos/backups > /dev/null 2>&1
set undodir=~/.vimundos/backups
set undofile
