set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'  " like IDE FileTree
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic' " for checking code syntax
Plugin 'ctrlpvim/ctrlp.vim' " find file - push '^ + p' to start
Plugin 'nanotech/jellybeans.vim' " jellybeans Theme

call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree ON/OFF Hotkey '\nt' / '\ntt'
map <Leader>nt <ESC>:NERDTree<CR>
map <Leader>ntt <ESC>:NERDTreeToggle<CR>

"use to ignore dir such as Third-party dir, .git dir in project
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" apply color scheme
" color jellybeans

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" intent
set autoindent
set smartindent
set cindent

" about tab
set ts=4
set shiftwidth=4

" Line number
set number

set laststatus=2
set statusline=\ %<%l:%v\ [%p]%=%a\ %h%m%r\ %F\

" File Incoding
set fileencodings=utf-8,euc-kr

set history=1000
set ruler
set nobackup
set title

" for python
let python_highlight_all = 1
