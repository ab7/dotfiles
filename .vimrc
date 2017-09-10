" vundle plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic' 
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline', {'rtp':  'powerline/bindings/vim'}

call vundle#end()

" key mappings
inoremap jk <ESC>
let mapleader = ","

" indent settings
filetype plugin indent on
set expandtab
set autoindent
set shiftround

" enable syntax highlighting
syntax on

" no auto comment on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" show line numbers
set number

" command line completion
set wildmenu
set wildmode=full

" theme
colorscheme badwolf

" highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
   set colorcolumn=81
   highlight ColorColumn ctermbg=grey
else
   highlight OverLength ctermbg=red ctermfg=white guibg=#592929
   match OverLength /\%81v.\+/
endif

" search jump settings
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

" word wrap
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" powerline settings
set encoding=utf8
set termencoding=utf8
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:Powerline_symbols='unicode'
set t_Co=256
set laststatus=2
set noshowmode
set fillchars+=stl:\ ,stlnc:\
