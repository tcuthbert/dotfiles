set nocompatible              " be iMproved, required

filetype on                  " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
"Plugin 'xolox/vim-notes'
"Plugin 'xolox/vim-misc'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'benmills/vimux'
Plugin 'szw/vim-tags'
Plugin 'pgilad/vim-skeletons'
Plugin 'rking/ag.vim'
Plugin 'cwood/vim-django'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rvm'
Plugin 'markcornick/vim-vagrant'
Plugin 'lambdalisue/vim-pyenv'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-dispatch'
Plugin 'rodjek/vim-puppet'
Bundle 'davidhalter/jedi-vim'
"Bundle 'joonty/vdebug'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-projectionist'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet.vim'
"Plugin 'klen/python-mode'
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'mbbill/undotree'
Plugin 'flazz/vim-colorschemes'
Plugin 'c9s/perlomni.vim'
Plugin 'mhinz/vim-tmuxify'
Plugin 'wellle/tmux-complete.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'thinca/vim-ref'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'Shougo/neocomplete'
Plugin 'bling/vim-airline'
" Shougo plugins
" vim-scripts repos
"Plugin 'vim-scripts/grep.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set t_ut=
"set wildmenu
set exrc
set secure

syntax on
colorscheme mustang

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

"let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
"let g:ycm_server_keep_logfiles = '/tmp/ycm.log'
"let g:UltiSnipsExpandTrigger = '<C-j>'


"noremap <Leader>B :Make<cr>
noremap <F5> :Make<cr>
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby nmap <Leader>rs :call VimuxRunCommand("rails s")<CR>
"autocmd FileType python compiler python
"autocmd FileType python nmap <Leader>d :call VimuxRunCommand("ipdb" . bufname("%"))<CR>
"autocmd FileType python nmap <Leader>r :call VimuxRunCommand("clear; python " . bufname("%"))<CR>
"autocmd FileType c let b:dispatch = "gcc -Wall -Werror % -o%:r -I."

"let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:airline#extensions#tabline#enabled = 1
let g:vim_tags_ctags_binary='/usr/local/bin/ctags'
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "CustomSnips"]

let g:pymode = 0
let g:pymode_run_key = "<Leader>pr"
let g:pymode_breakpoint_key = "<Leader>pb"
let g:pymode_virtualenv = 0
let g:pymode_rope_completion = 0
let g:django_projects = '~/Code/python' "Sets all projects under project
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv
let g:django_activate_nerdtree = 0 "Try to open nerdtree at the project root.
"
" Custom Key Mappings
nmap ,b :CtrlPBuffer<CR>
nmap ,m :CtrlPMRUFiles<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>
nmap <Leader>e :NERDTreeToggle<CR>


" Dirty Hacks
"call yankstack#setup()

" Fix C++ indenting
autocmd FileType cpp,c inoremap {      {}<Left>
autocmd FileType cpp,c inoremap {<CR>  {<CR>}<Esc>O
autocmd FileType cpp,c inoremap {{     {
autocmd FileType cpp,c inoremap {}     {}


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
  return neocomplete#close_popup() . "\<CR>"
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
autocmd FileType python setlocal omnifunc=jedi#completions
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
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:neosnippet#disable_runtime_snippets = {'_' : 1}
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets/'

