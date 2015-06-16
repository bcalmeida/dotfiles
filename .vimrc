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
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'paredit.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==== Plugin specifics ====
" Solarized
colorscheme solarized 			" Set solarized as color scheme
" let g:solarized_termcolors=256 	" When not using solarized color palette

" Molokai - Not in use
" colorscheme molokai
" let g:molokai_original = 1

" NERDTree
" NERDTreeTabs
map <Leader>t <plug>NERDTreeTabsToggle<CR>

" vim-coffee-script
" ...

" ==== General ====
syntax on
set t_Co=256" 256 colors
set background=light
set hls		" Highlight search
set number	" Show line numbers
set title	" Title of file on tab
set autoread

" Indentation
set autoindent
set smartindent

" ==== Language specific indentation ====
" shiftwidth: size of indentation operations (=tabstop)
" tabstop: tab size
" expandtab: spaces instead of tabs
" softtabstop: size when hitting tab. filled with spaces if needed (=tabstop)

" Go
" Already default

" Python
autocmd FileType python set shiftwidth=4|set tabstop=4|set expandtab|set softtabstop=4
" Python extras
" set textwidth=79  " lines longer than 79 columns will be broken
" set shiftround    " round indent to multiple of 'shiftwidth'
" set autoindent    " align the new line indent with the previous line

" JavaScript
autocmd FileType javascript set shiftwidth=4|set tabstop=4|set expandtab|set softtabstop=4

" CoffeeScript
" No tabs. Tabs are 4 space characeters.
autocmd BufNewFile,BufReadPost *.coffee set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

" HTML
autocmd FileType html set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

" Cucumber
autocmd BufNewFile,BufReadPost *.feature set shiftwidth=2|set tabstop=2|set expandtab|set softtabstop=2

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

