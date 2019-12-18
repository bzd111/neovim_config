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
nnoremap <buffer> <silent> <leader>g :GoDef<cr>
nnoremap <buffer> <silent> <leader>r :GoRename<cr>


""""""""""""""""""""""" CtrlSF settings """"""""""""""""""""""""""
nmap <leader>f <Plug>CtrlSFPrompt
vmap <leader>f <Plug>CtrlSFVwordPath


""""""""""""""""""""""" Coc settings """"""""""""""""""""""""""
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)
"
noremap <silent><leader>uu :CocList -N<CR>
noremap <silent><leader>uf :CocList files<CR>
noremap <silent><leader>ue :CocList extensions<CR>
noremap <silent><leader>uc :CocList commands<CR>


""""""""""""""""""""""" ale settings """"""""""""""""""""""""""
" nmap <silent> [e <Plug>(ale_previous_wrap)
" nmap <silent> ]e <Plug>(ale_next_wrap)


""""""""""""""""""""""" undotree settings """"""""""""""""""""""""""
noremap <silent><F3> :UndotreeToggle<CR>


