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
Plugin 'Lokaltog/vim-easymotion' " moving the cursor on one screen
Plugin 'scrooloose/nerdcommenter' " annotate according to the file types
Plugin 'edkolev/promptline.vim' " like vim-airline for terminal
Plugin 'surround.vim' " string wrap
Plugin 'vcscommand.vim' " vcs, svn
Plugin 'pangloss/vim-javascript' " for javascript development
Plugin 'junegunn/fzf' " general-purpose command-line fuzzy finder
Plugin 'valloric/youcompleteme' " A CODE-COMPLETION ENGINE FOR VIM
Plugin 'majutsushi/tagbar' " t provides an easy way to browse the tags of the current file and get an overview of its structure.
Plugin 'terryma/vim-multiple-cursors' "

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

map <Leader>rc :rightbelow vnew $MYVIMRC<CR>
" for python
let python_highlight_all = 1

" for javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
	au!
	au FileType javascript setlocal foldmethod=syntax
augroup END

" for fzf commader
map ; :Files<CR>

" NERD commander
map <leader>cc :NERDComComment<CR>
map <leader>cn :NERDComNestedComment<CR>
map <leader>cs :NERDComSexyComment<CR>
map <leader>c<space> :NERDComToggleComment<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1              " vim-airline 버퍼 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'          " vim-airline 버퍼 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1       " buffer number를 보여준다
let g:airline#extensions#tabline#buffer_nr_format = '%s:' " buffer number format

nnoremap <C-S-t> :enew<Enter>         " 새로운 버퍼를 연다
nnoremap <C-F5> :bprevious!<Enter>    " 이전 버퍼로 이동
nnoremap <C-F6> :bnext!<Enter>        " 다음 버퍼로 이동
nnoremap <C-F4> :bp <BAR> bd #<Enter> " 현재 버퍼를 닫고 이전 버퍼로 이동

" vim tagbar
nmap <F8> :TagbarToggle<CR>

" vim-multiple-cursor Mapping
" If you dont like the plugin taking over your key bindings, you can turn it off and reassign them the way you want:
" viml
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
