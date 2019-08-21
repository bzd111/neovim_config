"""""""""""""""""""""""""deoplete-jedi settings"""""""""""""""""""""""""""
" show doc string
let g:deoplete#sources#jedi#show_docstring = 1

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/local/bin/python3'

" for large package, set autocomplete wait time longer
let g:deoplete#sources#jedi#server_timeout = 50


""""""""""""""""""""""""jedi-vim settings"""""""""""""""""""
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"


""""""""""""""""""""""""""" deoplete settings""""""""""""""""""""""""""
" automatically close function preview windows after completion
" see https://goo.gl/Bn5n39
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


""""""""""""""""""""""" deoplete settings""""""""""""""""""""""""""
" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>


""""""""""""""""""""""""jedi-vim settings"""""""""""""""""""
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"



"""""""""""""""""""""""""""vim-airline setting""""""""""""""""""""""
"set airline themes
let g:airline_theme='bubblegum'

" show tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" skip empty sections if nothing to show
" extract from https://vi.stackexchange.com/a/9637/15292
let g:airline_skip_empty_sections = 1

" show buffer number for easier switching between buffer
" see https://github.com/vim-airline/vim-airline/issues/1149
let g:airline#extensions#tabline#buffer_nr_show = 1

"make airline more beautiful, see https://goo.gl/XLY19H for more info
" let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" airline symbols


"""""""""""""""""""""""""""""supertab settings""""""""""""""""""""""""""
" auto-close method preview window
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabDefaultCompletionType = "<c-n>"


""""""""""""""""""""""""""""nerdcommenter settings"""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" use one space after # comment character in python,
" see https://github.com/scrooloose/nerdcommenter/issues/346#issuecomment-432705934
let g:NERDAltDelims_python = 1

" Align line-wise comment delimiters flush left instead
" of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


""""""""""""""""""neoformat settins"""""""""""""""""""""""
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
let g:neoformat_try_formatprg = 1
" runs all formatters for current buffer without tab to spaces conversion
let b:neoformat_run_all_formatters = 1
let b:neoformat_basic_format_retab = 0


""""""""""""""""""neoformat settins"""""""""""""""""""""""
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neoformat_enabled_python = ['black', 'autopep8', 'yapf', 'docformatter']
let g:neoformat_try_formatprg = 1
" runs all formatters for current buffer without tab to spaces conversion
let b:neoformat_run_all_formatters = 1
let b:neoformat_basic_format_retab = 0
let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'stdin': 1,
            \ 'args': ['--line-length', '110', '-S', '-', '2>/dev/null'],
            \ }


""""""""""""""""""""""" nerdtree settings """"""""""""""""""""""""""
" toggle nerdtree window and keep cursor in file window
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>:wincmd p<CR>
let NERDTreeWinPos='left'
let NERDTreeWinSize=30

" ignore certain files and folders
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree

" delete a file buffer when you have deleted it in nerdtree
let NERDTreeAutoDeleteBuffer = 1

" show current root as realtive path from HOME in status bar
let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"

" disable bookmark and 'press ? for help ' text
let NERDTreeMinimalUI=1


"""""""""""""""""""""""""""""" neomake settings """""""""""""""""""""""
" when writing or reading a buffer, and
" on changes in normal mode (after 0.5s; no delay when writing).
call neomake#configure#automake('nrw', 50)

" change warning signs, see https://goo.gl/eHcjSq
highlight NeomakeErrorMsg ctermfg=227 ctermbg=237
let g:neomake_warning_sign={'text': '!', 'texthl': 'NeomakeErrorMsg'}

" only enable flake8 linter for python
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_flake8_maker = {
            \ 'args': [ '--max-line-length=90'
            \ ]
            \ }

let g:neomake_javascript_enabled_makers = ['eslint']
let g:lint_types = [
            \  'yaml.ansible', 'php', 'ruby', 'vim', 'sh', 'python',
            \  'javascript', 'jsx', 'javascript.jsx', 'json', 'css',
            \  'markdown', 'html', 'yaml'
            \ ]

" do not highlight columns, it works bad for sublimemonokai
" see https://goo.gl/wd68ex for more info
let g:neomake_highlight_columns = 1


""""""""""""""""""""""" UltiSnips settins  """"""""""""""""""""""""""
let g:UltiSnipsSnippetsDir = $NVIM_HOME.'/UltiSnips'
let g:UltiSnipsExpandTrigger="<c-j>"


""""""""""""""""""""""" ctrlp settins  """"""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }


""""""""""""""""""""""" rainbow settins  """"""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {
            \    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \    'guis': [''],
            \    'cterms': [''],
            \    'operators': '_,_',
            \    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \    'separately': {
            \        '*': {},
            \        'markdown': {
            \            'parentheses_options': 'containedin=markdownCode contained',
            \        },
            \        'lisp': {
            \            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3']
            \        },
            \        'haskell': {
            \            'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
            \        },
            \        'vim': {
            \            'parentheses_options': 'containedin=vimFuncBody',
            \        },
            \        'perl': {
            \            'syn_name_prefix': 'perlBlockFoldRainbow',
            \        },
            \        'stylus': {
            \            'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
            \        },
            \        'css': 0,
            \    }
            \}
