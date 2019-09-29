let mapleader = ','
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set guifont=Monaco:h40

" activate syntax
syntax on

" turn on plugin and indent for file types
filetype plugin indent on

" changing fillchars for folding, so there is no garbage charactes
set fillchars=fold:-,vert:\|

" paste mode toggle, it seems that neovim's bracketed paste mode
" does not work very well for now, so we use old paste mode
set pastetoggle=<F2>

" show current line cursor is in
" set cursorline

" split window below when creating new window
set splitbelow

"highlight python code
let python_highlight_all=1

" Time in milliseconds to wait for a mapped sequence to complete
" see https://goo.gl/vHvyu8 for more info
set timeoutlen=800

" clipboard settings, see https://goo.gl/YAHBbJ for more
" information
set clipboard+=unnamedplus

" do not create swap files
set noswapfile      " disable creating swapfiles, see https://goo.gl/FA6m6h

"general tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space

set showmatch " show matching bracket
set number " show line number
set relativenumber " show line number relative to current line

" character case related settings
set ignorecase " ignore case when searching
set smartcase " case sensitive when uppercase present

" encoding settings for vim
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set linebreak " line will break at predefined characters

set wildmode=list:longest,full " list all items and start selecting matches

" set a ruler at column 80 and also set its color
" see https://goo.gl/vEkF5i for more info
set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" minimum lines to keep above and below cursor
set scrolloff=5

" use mouse to select window and resizing window, etc
set mouse=r

" do not show mode on last line because airline can show it already
set noshowmode

" ignore case
set ignorecase

" switch buffer
map H :bn<cr>
map L :bp<cr>
map D :bd<cr>

" switch windows
nnoremap <C-[> <C-w>h
nnoremap <C-]> <C-w>l

" clipboard sharing
set clipboard=unnamed

" windows keymap
nnoremap <C-K> <C-W>j
nnoremap <C-J> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
