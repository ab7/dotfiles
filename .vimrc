" key mappings
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
