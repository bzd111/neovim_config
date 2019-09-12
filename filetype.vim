""""""""""""""""""neoformat settins"""""""""""""""""""""""
augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
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

    " :GoRun
    autocmd FileType go nmap <leader>r  <Plug>(go-run)

    " :GoDoc
    autocmd FileType go nmap <Leader>d <Plug>(go-doc)

    " :GoInfo
    autocmd FileType go nmap <Leader>i <Plug>(go-info)

    " :GoAlternate  commands :A, :AV, :AS and :AT
    autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END
