" better ESC in insert mode, see https://goo.gl/SSSW5v
inoremap jj <esc>


" Add new line after current line in insert mode vim, see https://t.cn/AiHXsabK
imap <C-Enter> <Esc>o
imap <C-S-Enter> <Esc>O
nnoremap <CR> o<Esc>


"""""""""""""""""""""""""deoplete-jedi settings"""""""""""""""""""""""""""
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


""""""""""""""""""""""" nerdtree settings """"""""""""""""""""""""""
" toggle nerdtree window and keep cursor in file window
" nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>:wincmd p<CR>
" nnoremap <silent><C-D> :NERDTreeFind%<CR>:wincmd p<CR>
noremap <silent> <leader>nf :NERDTreeFind<CR>
noremap <silent> <leader>nt :NERDTreeTabsToggle<CR>
noremap <silent> <leader>nm :NERDTreeMirrorToggle<CR>


""""""""""""""""""""""" vim-go settings """"""""""""""""""""""""""
" autocmd FileType go nnoremap <buffer> <silent> <leader>g :GoDef<cr>
" autocmd FileType go nnoremap <buffer> <silent> <leader>r :GoRename<cr>
nnoremap <buffer> <silent> <leader>g :GoDef<cr>
nnoremap <buffer> <silent> <leader>r :GoRename<cr>


""""""""""""""""""""""" CtrlSF settings """"""""""""""""""""""""""
nmap <leader>f <Plug>CtrlSFPrompt
vmap <leader>f <Plug>CtrlSFVwordPath


""""""""""""""""""""""" Coc settings """"""""""""""""""""""""""
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Use <C-l> for trigger snippet expand.
" imap <C-j> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" imap <C-j> <Plug>(coc-snippets-expand)



" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [e <Plug>(coc-diagnostic-prev)
" nmap <silent> ]e <Plug>(coc-diagnostic-next)
"
noremap <silent><leader>uu :CocList -N<CR>
noremap <silent><leader>uf :CocList files<CR>
noremap <silent><leader>ue :CocList extensions<CR>
noremap <silent><leader>uc :CocList commands<CR>


""""""""""""""""""""""" ale settings """"""""""""""""""""""""""
nmap <silent> [e <Plug>(ale_previous_error)
nmap <silent> ]e <Plug>(ale_next_error)
nmap <silent> [w :ALEPrevious<cr>
nmap <silent> ]w :ALENext<cr>


""""""""""""""""""""""" undotree settings """"""""""""""""""""""""""
noremap <silent><F3> :UndotreeToggle<CR>


""""""""""""""""""""""" tagbar""""""""""""""""""""""""""
noremap <leader>tb :TagbarOpen fjc<CR>
noremap <leader>tB :TagbarToggle<CR>

" switch buffer
map L :bn<cr>
map H :bp<cr>
map D :bd<cr>

" switch windows
nnoremap <C-[> <C-w>h
nnoremap <C-]> <C-w>l

" switch error/warning
map <C-[> :lprev<CR>
map <C-]> :lnext<CR>

" clipboard sharing
set clipboard=unnamed

" windows keymap
" nnoremap <C-K> <C-W>k
" nnoremap <C-J> <C-W>j
" nnoremap <C-L> <C-W>l
" nnoremap <n-H> <C-W>h
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" page operating
noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")
noremap <expr> <C-f> max([winheight(0) - 2, 1])
            \ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
            \ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")


""""""""""""""""""""""" from book """"""""""""""""""""""""""
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <silent> [t :tabnext<CR>
nnoremap <silent> ]t :tabprevious<CR>

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
