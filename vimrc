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
 Bundle 'kchmck/vim-coffee-script'
 Bundle 'benmills/vimux'
 Bundle 'rking/ag.vim'
 Bundle 'kien/ctrlp.vim'
 Bundle 'vim-ruby/vim-ruby'
 Bundle 'tpope/vim-rails'
 Bundle 'tpope/vim-dispatch'
 "Bundle 'davidhalter/jedi-vim'
 Bundle 'joonty/vdebug'
 Bundle 'tpope/vim-speeddating'
 Bundle 'tpope/vim-surround'
 Bundle 'SirVer/ultisnips'
 Bundle 'klen/python-mode'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/syntastic'
 Bundle 'mbbill/undotree'
 Bundle 'flazz/vim-colorschemes'
 Bundle 'c9s/perlomni.vim'
 Bundle 'jiangmiao/auto-pairs'
 Bundle 'thinca/vim-ref'
 Bundle 'majutsushi/tagbar'
 Bundle 'ivanov/vim-ipython'
 Bundle 'joonty/vdebug'
 Bundle 'insanum/votl'
 Bundle 'tobyS/skeletons.vim'
 Bundle 'Valloric/YouCompleteMe'
 "Bundle 'Rip-Rip/clang_complete'
 " Shougo plugins
 "Bundle 'Shougo/vimproc'
 "Bundle 'Shougo/vimfiler.vim'
 "Bundle 'Shougo/unite.vim'
 "Bundle 'Shougo/unite-ssh'
 "Bundle 'Shougo/vimshell.vim'
 "Bundle 'Shougo/neocomplete.vim'
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

let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
let g:UltiSnipsExpandTrigger = '<C-j>'
"let g:UltiSnipsJumpForwardTrigger
"let g:UltiSnipsJumpBackwardTrigger


autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby nmap <Leader>rs :call VimuxRunCommand("rails s")<CR>

"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "CustomSnips"]

let g:pymode_run_key = "<Leader>pr"
let g:pymode_breakpoint_key = "<Leader>pb"
"let g:vimfiler_as_default_explorer = 1

" Custom Key Mappings
"nmap ,b :Unite buffer<CR>
nmap ,b :CtrlPBuffer<CR>
"nmap ,f :Unite file<CR>
"nmap <Leader>s :VimShellPop<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>
nmap <Leader>e :NERDTreeToggle<CR>

autocmd FileType c nmap <Leader>dc :Dispatch gcc -Wall -Werror % -o %:r<cr>
autocmd FileType c nmap <Leader>R :Dispatch ./%:r<cr>
autocmd FileType cpp nmap <Leader>b :Make -f ~/dotfiles/vim/Makefile testCpp OUT=%:r IN=%<cr>
autocmd FileType cpp nmap <Leader>q :Make -f ~/dotfiles/vim/Makefile testQt<cr>
autocmd FileType cpp nmap <Leader>R :Dispatch ./%:r<cr>
"autocmd FileType python nmap <Leader>D :!ipdb %<cr>
autocmd FileType perl nmap <Leader>R :silent Dispatch perl %<cr>

" Dirty Hacks
"call yankstack#setup()

" Fix C++ indenting
autocmd FileType cpp,c inoremap {      {}<Left>
autocmd FileType cpp,c inoremap {<CR>  {<CR>}<Esc>O
autocmd FileType cpp,c inoremap {{     {
autocmd FileType cpp,c inoremap {}     {}
