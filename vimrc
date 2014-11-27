set nocompatible              " be iMproved, required
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
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'benmills/vimux'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rvm'
Plugin 'markcornick/vim-vagrant'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-dispatch'
Plugin 'rodjek/vim-puppet'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'joonty/vdebug'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-projectile'
Plugin 'SirVer/ultisnips'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'mbbill/undotree'
Plugin 'flazz/vim-colorschemes'
Plugin 'c9s/perlomni.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'thinca/vim-ref'
Plugin 'majutsushi/tagbar'
"Bundle 'ivanov/vim-ipython'
"Bundle 'insanum/votl'
Plugin 'tobyS/skeletons.vim'
Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'
" Shougo plugins
" vim-scripts repos
Plugin 'vim-scripts/grep.vim'

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
set wildmenu

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

let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_server_keep_logfiles = '/tmp/ycm.log'
let g:UltiSnipsExpandTrigger = '<C-j>'


noremap <Leader>B :Make<cr>
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 0 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby nmap <Leader>rs :call VimuxRunCommand("rails s")<CR>
autocmd FileType python compiler python
autocmd FileType python nmap <Leader>d :call VimuxRunCommand("ipdb" . bufname("%"))<CR>
autocmd FileType python nmap <Leader>r :call VimuxRunCommand("clear; python " . bufname("%"))<CR>
autocmd FileType c let b:dispatch = "gcc -Wall -Werror % -o%:r -I."

let g:UltiSnipsSnippetDirectories=["UltiSnips", "CustomSnips"]

let g:pymode = 0
let g:pymode_run_key = "<Leader>pr"
let g:pymode_breakpoint_key = "<Leader>pb"
let g:pymode_virtualenv = 1
let g:pymode_rope_completion = 0

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
