""""""""""""""""""neoformat settins"""""""""""""""""""""""
 "augroup fmt
  "  autocmd!
   " au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
    " autocmd BufWritePre * undojoin| Neoformat
"augroup END


"""""""""""""""""""""""""""" vim-node settings """"""""""""""""""""""""""""
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif


"""""""""""""""""""""""""""" vim-vue settings """"""""""""""""""""""""""""
autocmd FileType vue syntax sync fromstart


"""""""""""""""""""""""""""" vim-go settings """"""""""""""""""""""""""""
augroup go
    autocmd!

    " Show by default 4 spaces for a tab
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

    " :GoTest
    autocmd FileType go nmap <leader>t  <Plug>(go-test)

    " :GoRename
    autocmd FileType go nmap <leader>r  <Plug>(go-rename)

    " :GoDoc
    autocmd FileType go nmap <Leader>d <Plug>(go-doc)

    " :GoInfo
    autocmd FileType go nmap <Leader>i <Plug>(go-info)

    " :GoDef
    autocmd FileType go nmap <Leader>g <Plug>(go-def)

    " :GoAlternate  commands :A, :AV, :AS and :AT
    autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

" augroup python 
  " autocmd!
  " Setup formatexpr specified filetype(s).
  " autocmd FileType py call CocAction('Sort imports')
  " autocmd FileType py call CocAction('runCommand', 'editor.action.organizeImport')

  " autocmd FileType python call CocAction('sortimports')
  " autocmd FileType python call CocAction('format')
" augroup end

" autocmd BufWritePre *.py :call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufNewFile,BufRead *.vue set ft=vue
autocmd FileType vue set ai
autocmd FileType vue set sw=2
autocmd FileType vue set ts=2
autocmd FileType vue set sts=2

autocmd BufNewFile,BufRead *.jsx set ft=jsx
autocmd FileType jsx set ai
autocmd FileType jsx set sw=2
autocmd FileType jsx set ts=2
autocmd FileType jsx set sts=2

autocmd BufRead *.js set isk-=.
autocmd BufRead *.jsx set isk-=.

autocmd FileType html setlocal ts=2 sts=2 sw=2
