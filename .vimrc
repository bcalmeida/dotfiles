" ==== Vundle ====
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
" Color schemes
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'tomasr/molokai'
Plugin 'w0ng/vim-hybrid'

" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'

" Extras
Plugin 'vim-scripts/vim-auto-save'

" Languages
" CoffeeScript
Plugin 'kchmck/vim-coffee-script' " CoffeeScript

" Slim (Rails template engine)
"Plugin 'slim-template/vim-slim.git'
"Plugin 'onemanstartup/vim-slim.git'

" Stylus (CSS)
" Plugin 'wavded/vim-stylus'

" Clojure
" Plugin 'tpope/vim-fireplace'
" Plugin 'paredit.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==== Powerline ====
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" ==== Color Schemes ====
" Solarized
" colorscheme solarized
" let g:solarized_termcolors=256 	" Only when not using solarized color palette

" Molokai
" colorscheme molokai
" let g:molokai_original = 1

" Hybrid
colorscheme hybrid
let g:hybrid_use_Xresources = 1

" ==== Plugin specifics ====

" NERDTree
" NERDTreeTabs
map <Leader>t <plug>NERDTreeTabsToggle<CR>

" Ctrl P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" AutoSave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
" let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option (may affect other plugins and break things)
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

" ==== General ====
syntax on
set t_Co=256	" 256 colors
set background=dark
set hls		" Highlight search
set number	" Show line numbers

" Indentation
set autoindent
set smartindent

" Highlight line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" No beeping sound
set vb
set t_vb=

" Auto read if file change
set autoread " Apply only to certain events (:h timestamp). Line below to make it more frenquent
au FocusGained,BufEnter,BufWinEnter,CursorHold,CursorMoved * :checktime

" Always show statusline
" 0: never
" 1: only if there are at least two windows (this one is the default)
" 2: always
set laststatus=2

" Open splits more naturally: below and to the right
set splitbelow
set splitright

" Copy/paste from clipboard by default
set clipboard=unnamed

" ==== Custom keys ====
" Easier save/quit
map <Leader>w :w<CR>
map <Leader>q :q<CR>

" Save movement around splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Copy whole file to clipboard (used hackerrank, leetcode, etc...)
map <Leader>y ggvG"*y

" ==== Language specific indentation ====
" shiftwidth: size of indentation operations (=tabstop)
" tabstop: tab size
" expandtab: spaces instead of tabs
" softtabstop: size when hitting tab. filled with spaces if needed (=tabstop)

" Go
" Already default

" Python
autocmd FileType python set shiftwidth=4|set tabstop=4|set expandtab|set softtabstop=4
" set textwidth=79  " lines longer than 79 columns will be broken
" set shiftround    " round indent to multiple of 'shiftwidth'
" set autoindent    " align the new line indent with the previous line

" JavaScript
autocmd FileType javascript set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

" CoffeeScript
" No tabs. Tabs are 4 space characeters.
autocmd BufNewFile,BufReadPost *.coffee set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2
autocmd BufNewFile,BufReadPost *.cson setfiletype coffee

" HTML
autocmd FileType html set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

" Cucumber
autocmd BufNewFile,BufReadPost *.feature set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

" Clojure - Hoplon
" Could also just use ':set filetype=clojure'
" To override any detected filetype, use it like 'set filetype=clojure'
autocmd BufRead,BufNewFile *.cljs.hl setfiletype clojure

" Ruby
autocmd FileType ruby set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

" Lex and Yacc
autocmd BufNewFile,BufReadPost *.lex set shiftwidth=4|set tabstop=4
autocmd BufNewFile,BufReadPost *.y   set shiftwidth=4|set tabstop=4

" ==== ETC ====
" Per-directory .vimrc
" set exrc            " enable per-directory .vimrc files
" set secure          " disable unsafe commands in local .vimrc files

" Save session
" map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
" map <F3> :source ~/vim_session <cr>     " And load session with F3

" Put all swap files together, out of the working directory.
" Double trailing slashes to avoid name collisions: name of file will include
" it's path. Ex: % = /path/to/foo.txt, results in %path%to%foo.txt.swap
" These directories should be created beforehand.
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

