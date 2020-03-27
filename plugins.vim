" settings for deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" python source for deoplete
" Plug 'zchee/deoplete-jedi'

" Python completion, goto definition etc.
" Plug 'davidhalter/jedi-vim'

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" status line
Plug 'vim-airline/vim-airline'

" vim-airline theme
Plug 'vim-airline/vim-airline-themes'

" for insert mode completion
" Plug 'ervandew/supertab'

" auto pair insert and delete
" surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" comment plugin
Plug 'scrooloose/nerdcommenter'

" auto format tool
" Plug 'sbdchd/neoformat'

" file explorer for vim
Plug 'scrooloose/nerdtree'

" NERDTree and tabs together in Vim, painlessly
Plug 'jistr/vim-nerdtree-tabs'

" syntax check and make
" Plug 'neomake/neomake'

" highlight yanked region
Plug 'machakann/vim-highlightedyank'

" snippet engine
Plug 'SirVer/ultisnips'

" snippet template for ultisnips
" Plug 'honza/vim-snippets'

" Full path fuzzy file, buffer, mru, tag, ...
Plug 'kien/ctrlp.vim'

" fancy vim start screen
Plug 'mhinz/vim-startify'

" rainbow parentheses improved
Plug 'luochen1990/rainbow'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" An ack/ag/pt/rg powered code search and view tool
Plug 'dyng/ctrlsf.vim'

" Wakatime text editor plugins
Plug 'wakatime/vim-wakatime'

" VIM MARKDOWN RUNTIME FILES
Plug 'plasticboy/vim-markdown'

" Plug 'lvht/tagbar-markdown', {'for': ['markdown']} " List TOC

" markdown toc
Plug 'mzlogin/vim-markdown-toc'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', {'for': 'markdown', 'do': 'cd app & yarn install'}

"mproved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript'

" React JSX syntax highlighting and indenting for vim.
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}

" Syntax Highlight for Vue.js components
Plug 'posva/vim-vue'

" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'ryanoasis/vim-devicons'

" A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" Extra syntax and highlight for nerdtree files
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks and partial hunks.
Plug 'airblade/vim-gitgutter'
" Multiple cursors project for vim/neovim (wip)
" Plug 'mg979/vim-visual-multi'

" deoplete-go
" Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'dense-analysis/ale'

" The undo history visualizer for VIM
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'


" Plug 'justinj/vim-react-snippets'

" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar'

" A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation.
Plug 'jparise/vim-graphql'

" fzf ❤️ vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

