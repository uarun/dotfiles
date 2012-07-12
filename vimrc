" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let mapleader = ","

" Load plugins that ship with Vim
runtime macros/matchit.vim
runtime ftplugin/man.vim

" Load bundled plugins
call pathogen#infect()
call pathogen#helptags()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=50
set incsearch
set visualbell t_vb=
set hidden
set nojoinspaces
set wildmode=longest,list
set nrformats=
if has('mouse')
  set mouse=a
endif

" Appearance
set ruler
set showcmd
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set number
"set cursorline

" When the terminal has colors, enable syntax+search highlighting
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab

" Disable swapfile and backup
set nobackup
set noswapfile

