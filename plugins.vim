" settings for deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" python source for deoplete
Plug 'zchee/deoplete-jedi'

" Python completion, goto definition etc.
Plug 'davidhalter/jedi-vim'

" Use release branch
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" status line
Plug 'vim-airline/vim-airline'

" vim-airline theme
Plug 'vim-airline/vim-airline-themes'

" for insert mode completion
" Plug 'ervandew/supertab'

" auto pair insert and delete
Plug 'jiangmiao/auto-pairs'

" comment plugin
Plug 'scrooloose/nerdcommenter'

" auto format tool
Plug 'sbdchd/neoformat'

" file explorer for vim
Plug 'scrooloose/nerdtree'

" NERDTree and tabs together in Vim, painlessly
Plug 'jistr/vim-nerdtree-tabs'

" syntax check and make
Plug 'neomake/neomake'

" highlight yanked region
Plug 'machakann/vim-highlightedyank'

" snippet engine
Plug 'SirVer/ultisnips'

" snippet template for ultisnips
Plug 'honza/vim-snippets'

" Full path fuzzy file, buffer, mru, tag, ...
Plug 'kien/ctrlp.vim'

" fancy vim start screen
Plug 'mhinz/vim-startify'

" rainbow parentheses improved
Plug 'luochen1990/rainbow'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
