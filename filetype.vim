""""""""""""""""""neoformat settins"""""""""""""""""""""""
augroup fmt
    autocmd!
    "     " au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
    " autocmd BufWritePre * undojoin | Neoformat
    sleep 100m
    autocmd BufWritePre * undojoin| Neoformat
augroup END


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
