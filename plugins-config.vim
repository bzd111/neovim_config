"""""""""""""""""""""""""deoplete-jedi settings"""""""""""""""""""""""""""
" show doc string
" let g:deoplete#sources#jedi#show_docstring = 1

" let g:deoplete#enable_at_startup = 1
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:deoplete#sources#go = ['vim-go']

" for large package, set autocomplete wait time longer
" let g:deoplete#sources#jedi#server_timeout = 50
" call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

""""""""""""""""""""""""jedi-vim settings"""""""""""""""""""
" disable autocompletion, cause we use deoplete for completion
" let g:jedi#completions_enabled = 0
" let g:jedi#use_tabs_not_buffers = 1
" let g:jedi#completions_command = "<Tab>"
" let g:jedi#show_call_signatures = "2"
" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"


""""""""""""""""""""""""""" deoplete settings""""""""""""""""""""""""""
" automatically close function preview windows after completion
" see https://goo.gl/Bn5n39
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


""""""""""""""""""""""" deoplete settings""""""""""""""""""""""""""
" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>


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
" let g:SuperTabClosePreviewOnPopupClose = 1
" let g:SuperTabDefaultCompletionType = "<c-n>"


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

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = {
  \ 'javascript.jsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
  \}


""""""""""""""""""neoformat settins"""""""""""""""""""""""
" Enable alignment
" let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
" let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

" let g:neoformat_enabled_python = ['isort', 'black']
" let g:neoformat_enabled_javascript= ['prettier']
" let g:neoformat_enabled_markdown= ['prettier']
" let g:neoformat_enabled_c = ['uncrustify', 'clangformat', 'astyle' ]
let g:neoformat_enabled_proto = ['clangformat']
" let g:neoformat_enabled_c = ['astyle']
" let g:neoformat_try_formatprg = 0
" runs all formatters for current buffer without tab to spaces conversion
" let b:neoformat_run_all_formatters = 1
" let g:neoformat_python_black = {
            " \ 'exe': 'black',
            " \ 'stdin': 1,
            " \ 'args': ['--line-length', '90', '-S', '-', '2>/dev/null'],
            " \ }


""""""""""""""""""""""" nerdtree settings """"""""""""""""""""""""""
" toggle nerdtree window and keep cursor in file window
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

" custom config key map
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'

" auto close when open file
let g:NERDTreeQuitOnOpen = 1


"""""""""""""""""""""""""""""" neomake settings """""""""""""""""""""""
" when writing or reading a buffer, and
" on changes in normal mode (after 0.5s; no delay when writing).
" call neomake#configure#automake('nrw', 50)


" let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
" let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeErrorSign'}
" let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
" let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}


" only enable flake8 linter for python
" let g:neomake_python_enabled_makers = ['flake8', 'mypy']
" let g:neomake_python_flake8_maker = {
            " \ 'args': [ '--max-line-length=90', '--ignore=F811,E741'
            " \ ]
            " \ }

" let g:neomake_go_enabled_makers = ['golangci_lint']

" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:lint_types = [
"             \  'yaml.ansible', 'php', 'ruby', 'vim', 'sh', 'python',
"             \  'javascript', 'jsx', 'javascript.jsx', 'json', 'css',
"             \  'markdown', 'html', 'yaml'
"             \ ]

" do not highlight columns, it works bad for sublimemonokai
" see https://goo.gl/wd68ex for more info
" let g:neomake_highlight_columns = 1



""""""""""""""""""""""" UltiSnips settins  """"""""""""""""""""""""""
" let g:UltiSnipsSnippetsDir = $NVIM_HOME.'/UltiSnips'
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"


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
" custom split key map
let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("h")': ['s'],
            \ 'AcceptSelection("v")': ['v' ],
            \ }


""""""""""""""""""""""" rainbow settings  """"""""""""""""""""""""""
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


""""""""""""""""""""" vim-go settings """""""""""""""""""""
" let g:go_list_type = "quickfix"
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_fmt_command = "goimports"
" let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_get_update = 0
let g:go_rename_command = 'gopls'
" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'


""""""""""""""""""""" vim-markdown """""""""""""""""""""
let g:vim_markdown_conceal = 0
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_emphasis_multiline = 0
let g:vim_markdown_fenced_languages = ['python', 'js=javascript', 'viml=vim', 'bash=sh', 'golang=go']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal_code_blocks = 0


"""""""""""""coc settings  """""""""""""
let g:python3_host_prog="/usr/local/bin/python3"
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-json', 
  \ 'coc-prettier', 
  \ 'coc-python', 
  \ 'coc-markdownlint',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-yaml'
  \ ]

  " \ 'coc-pairs',
  " \ 'coc-tsserver',
  " \ 'coc-eslint', 
  " \ 'coc-prettier', 
  " \ 'coc-yaml', 
  " \ 'coc-vetur', 
  " \ 'coc-css', 
  " \ 'coc-html', 
  "
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

"""""""""""""ale settings  """""""""""""
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'markdown': ['mkl'],
  \ 'jsx': ['stylelint', 'eslint'],
  \ 'python': ['flake8', 'mypy'],
  \ 'vue': ['eslint', 'vls'],
  \ 'go': ['golint','golangci-lint'],
  \ 'ts': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'yaml': ['yamllint'],
  \ 'rust': ['rustc','rls'],
\}
let g:ale_fixers = {
  \ 'javascript': ['prettier'],
  \ 'css': ['stylelint'],
  \ 'yaml': ['prettier'],
  \ 'python': ['black', 'isort'],
  \ 'markdown': ['prettier'],
  \ 'vue': ['prettier'],
  \ 'typescript': ['prettier'],
  \ 'html': ['prettier'],
  \ 'rust': ['rustfmt'],
\}
let g:ale_linter_aliases = {
  \ 'jsx': 'javascript',
  \ 'vue': ['vue', 'javascript'],
\}
let g:ale_python_black_options='--skip-string-normalization --fast --line-length 88'
" let g:ale_python_flake8_options = '--max-line-length=88 --ignore=E265,E266,501'
let g:ale_python_flake8_options = '--max-line-length=88 '
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_statusline_format = ['E•%d', 'W•%d', '⬥ ok']
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warn'
let g:ale_echo_msg_format = '[%linter%][%severity%:: %code%] %s'
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:airline#extensions#ale#enabled = 1


""""""""""""""""undotree settings""""""""""""""""
if has("persistent_undo")
  set undodir=$NVIM_HOME/temp/undodir/
  set undofile
endif


""""""""""""""""vim-jsx settings""""""""""""""""
let g:jsx_ext_required = 0


""""""""""""""""vim-vue settings""""""""""""""""
let g:vue_pre_processors = ['pug', 'scss', 'less']


""""""""""""""""vim-closetag settings""""""""""""""""
let g:closetag_filenames = "*.html,*.xml,*.xhtml,*.htm,*.jsx,*.js"


