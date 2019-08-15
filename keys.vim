" better ESC in insert mode, see https://goo.gl/SSSW5v
inoremap jj <esc>


" Add new line after current line in insert mode vim, see https://t.cn/AiHXsabK
imap <C-Enter> <Esc>o
imap <C-S-Enter> <Esc>O
nnoremap <CR> o<Esc>


"""""""""""""""""""""""""deoplete-jedi settings"""""""""""""""""""""""""""
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


""""""""""""""""""""""" nerdtree settings """"""""""""""""""""""""""
" toggle nerdtree window and keep cursor in file window
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>:wincmd p<CR>
nnoremap <silent><C-D> :NERDTreeFind%<CR>:wincmd p<CR>

