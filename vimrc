 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'vim-ruby/vim-ruby'
 Bundle 'tpope/vim-rails'
 Bundle 'tpope/vim-dispatch'
 Bundle 'davidhalter/jedi-vim'
 Bundle 'joonty/vdebug'
 "Bundle 'tomtom/templator_vim'
 "Bundle 'troydm/easybuffer.vim'
 Bundle 'tpope/vim-speeddating'
 Bundle 'tpope/vim-surround'
 Bundle 'SirVer/ultisnips'
 Bundle 'klen/python-mode'
 "Bundle 'Valloric/YouCompleteMe'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'scrooloose/syntastic'
 "Bundle 'scrooloose/nerdtree'
 Bundle 'mbbill/undotree'
 Bundle 'flazz/vim-colorschemes'
 Bundle 'c9s/perlomni.vim'
 Bundle 'jiangmiao/auto-pairs'
 Bundle 'thinca/vim-ref'
 Bundle 'majutsushi/tagbar'
 Bundle 'ivanov/vim-ipython'
 "Bundle 'maxbrunsfeld/vim-yankstack'
 "Bundle 'joonty/vdebug'
 Bundle 'insanum/votl'
 Bundle 'tobyS/skeletons.vim'
 " Shougo plugins
 Bundle 'Shougo/vimproc'
 Bundle 'Shougo/vimfiler.vim'
 Bundle 'Rip-Rip/clang_complete'
 Bundle 'Shougo/unite.vim'
 Bundle 'Shougo/unite-ssh'
 Bundle 'Shougo/vimshell.vim'
 Bundle 'Shougo/neocomplete.vim'
 " vim-scripts repos
 Bundle 'vim-scripts/grep.vim'
 " non github repos

 " git repos on your local machine (ie. when working on your own plugin)

 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

set wrap
set linebreak
set guioptions-=T " turn off toolbar
set nowrap        " don't wrap lines
set backspace=indent,eol,start
set nocompatible
set expandtab
set shiftwidth=2  " number of spaces to use for autoindenting
set tabstop=2     " a tab is four spaces
set expandtab
"set autoindent    " always set autoindenting on
set smartindent    " always set smartindent on
"set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set ofu=syntaxcomplete#Complete
set foldmethod=syntax
set foldlevelstart=1
set t_Co=256
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
set wildmenu

syntax on
colorscheme mustang

" neocomplete configuration
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"Force omni patterns
if !exists('g:neocomplete#force_omni_input_patterns')
   let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
         \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
         \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
         \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp =
         \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
"let g:clang_use_library = 1

" Enable jedi completion
let g:pymode_rope_vim_completion = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:neocomplete#force_omni_input_patterns.python = '[^. \t]\.\w*'
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" end of neocomplete configuration
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let g:vimfiler_as_default_explorer = 1
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "CustomSnips"]

"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_semantic_triggers =  {
    "\   'c' : ['->', '.'],
    "\   'objc' : ['->', '.'],
    "\   'ocaml' : ['.', '#'],
    "\   'cpp,objcpp' : ['->', '.', '::'],
    "\   'perl' : ['->', '::'],
    "\   'php' : ['->', '::'],
    "\   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
    "\   'ruby' : ['.', '::'],
    "\   'lua' : ['.', ':'],
    "\   'erlang' : [':'],
"    \ }
let g:pymode_run_key = "<Leader>pr"
let g:pymode_breakpoint_key = "<Leader>pb"
let g:vimfiler_as_default_explorer = 1

" Custom Key Mappings
"nmap ,b :CtrlPBuffer<CR>
nmap ,b :Unite buffer<CR>
nmap ,f :Unite file<CR>
nmap <Leader>s :VimShellPop<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>
"nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>e :VimFilerExplorer<CR>

autocmd FileType c nmap <Leader>dc :Dispatch gcc -Wall -Werror % -o %:r<cr>
autocmd FileType c nmap <Leader>R :Dispatch ./%:r<cr>
autocmd FileType cpp nmap <Leader>b :Make -f ~/dotfiles/vim/Makefile testCpp OUT=%:r IN=%<cr>
autocmd FileType cpp nmap <Leader>q :Make -f ~/dotfiles/vim/Makefile testQt<cr>
autocmd FileType cpp nmap <Leader>R :Dispatch ./%:r<cr>
autocmd FileType python nmap <Leader>R :Dispatch! python %<cr>
autocmd FileType python nmap <Leader>D :!ipdb %<cr>
autocmd FileType perl nmap <Leader>R :silent Dispatch perl %<cr>

" Dirty Hacks
"call yankstack#setup()

" Fix C++ indenting
"set cino=i-s
"autocmd FileType cpp inoremap { {<CR><CR>}<C-o>k<C-o>S }
autocmd FileType cpp,c inoremap {      {}<Left>
autocmd FileType cpp,c inoremap {<CR>  {<CR>}<Esc>O
autocmd FileType cpp,c inoremap {{     {
autocmd FileType cpp,c inoremap {}     {}
