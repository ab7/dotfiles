" vundle plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" indent settings
filetype plugin indent on
set expandtab
set autoindent
set shiftround
set smartindent
set nowrap

" enable syntax highlighting
syntax on

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
