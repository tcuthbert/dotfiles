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
Plugin 'chase/vim-ansible-yaml'
Plugin 'szw/vim-tags'
Plugin 'shime/vim-livedown'
Plugin 'pgilad/vim-skeletons'
Plugin 'mileszs/ack.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rvm'
Plugin 'markcornick/vim-vagrant'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-dispatch'
Plugin 'rodjek/vim-puppet'
Bundle 'davidhalter/jedi-vim'
Bundle 'jmcantrell/vim-virtualenv'
"Bundle 'joonty/vdebug'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-projectionist'
"Plugin 'klen/python-mode'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'fatih/vim-go'
"Plugin 'Shougo/neosnippet.vim'
Plugin 'honza/vim-snippets'
"Plugin 'Shougo/neosnippet-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'mbbill/undotree'
Plugin 'flazz/vim-colorschemes'
Plugin 'c9s/perlomni.vim'
Plugin 'mhinz/vim-tmuxify'
"Plugin 'wellle/tmux-complete.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'thinca/vim-ref'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
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
set exrc
set secure
set noshowmode

"set wildmenu

syntax enable
colorscheme mustang

let g:ansible_options = {'ignore_blank_lines': 0}

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

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
"let g:ycm_server_keep_logfiles = '/tmp/ycm.log'
"let g:UltiSnipsExpandTrigger = '<C-j>'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"noremap <Leader>B :Make<cr>
noremap <F5> :Make<cr>
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby nmap <Leader>rs :call VimuxRunCommand("rails s")<CR>
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set errorformat=%f:%l:\ %m
"autocmd FileType python nmap <Leader>d :call VimuxRunCommand("ipdb" . bufname("%"))<CR>
"autocmd FileType python nmap <Leader>r :call VimuxRunCommand("clear; python " . bufname("%"))<CR>
"autocmd FileType c let b:dispatch = "gcc -Wall -Werror % -o%:r -I."

"let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
let g:airline#extensions#tabline#enabled = 1
let g:vim_tags_ctags_binary = '/usr/local/bin/ctags'
let g:vim_tags_use_vim_dispatch = 1
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'CustomSnips']
let g:django_projects = '~/Code/python' "Sets all projects under project
let g:django_activate_virtualenv = 0 "Try to activate the associated virtualenv
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


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" alternative pattern: '\h\w*\|[^. \t]\.\w*'
autocmd FileType python compiler python
autocmd FileType python setlocal omnifunc=jedi#completions
au FileType python setlocal completeopt-=preview
au FileType python silent set nosmartindent
let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#show_call_signatures = 2
let g:ultisnips_python_style = "sphinx"
