call plug#begin('~/.vim/plugged')

" Defaults
Plug 'tpope/vim-sensible'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Git
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Auto Complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer' }
"Plug 'Shougo/deoplete.nvim'
"Plug 'zchee/deoplete-jedi'
"Plug 'tweekmonster/deoplete-jedi', {'branch': 'jedi-monkeypatch'}
"Plug 'davidhalter/jedi-vim'

" HTML
Plug 'othree/html5.vim'

" TOML
Plug 'cespare/vim-toml'

" Documentation
Plug 'Rykka/riv.vim'

" Go
Plug 'fatih/vim-go'
"Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }


" Python
"Plug 'bfredl/nvim-ipy'
"Plug 'lambdalisue/vim-pyenv'
Plug 'hynek/vim-python-pep8-indent'

" Rust
Plug 'rust-lang/rust.vim'

" Ansible
Plug 'pearofducks/ansible-vim'

" UI
Plug 'freeo/vim-kalisi'
Plug 'bling/vim-airline'
Plug 'sjl/badwolf'

" REPL
"Plug 'kassio/neoterm'
"Plug 'hkupty/iron.nvim'
Plug 'jpalardy/vim-slime'

" Make
"Plug 'benekastah/neomake'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'

" Surrounds
Plug 'tpope/vim-surround'

" Grep
Plug 'mhinz/vim-grepper'

" Test
Plug 'janko-m/vim-test'

" Project
Plug 'tpope/vim-projectionist'

" Editing
Plug 'scrooloose/nerdcommenter'
Plug 'dhruvasagar/vim-table-mode'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'justinmk/vim-sneak'
Plug 'majutsushi/tagbar'

filetype plugin on

" Markdown
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

"Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer')  }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


" Add plugins to &runtimepath
call plug#end()

" Line Numbers
set nu

" Theme
colorscheme badwolf
"set background=light
" or 
set background=dark

" Fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Source\ Code\ Pro\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Vars
let HOME = '$HOME'
let s:uname = system("echo -n \"$(uname)\"")

" if you don't set the background, the light theme will be used
set t_Co=256

" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Sane defaults
set expandtab
set tabstop=4
set shiftwidth=4
set noautoindent
set guioptions -=m 
set guioptions -=T

" Auto Completion
let g:ycm_rust_src_path = '/usr/local/src/rust/src'
let g:ycm_server_python_interpreter = "/usr/bin/python"
let g:ycm_python_binary_path = expand(HOME . "/.pyenv/shims/python")
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

" Build
"nnoremap <F5> :Neomake!<CR>
" Write this in your vimrc file
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
" Python
"autocmd! BufWritePost * Neomake
"let g:neomake_charmbuild_maker = { 'exe': 'charm', 'args': ['build'] }
"let g:neomake_charmproof_maker = { 'exe': 'charm', 'args': ['proof'] }
"let g:neomake_python_flake8_make = {}
"let g:neomake_python_enabled_makers = ['flake8']

" Rust

" Navigation

" Symbol exploration
nmap <F8> :TagbarToggle<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Ctrl P
" Custom Key Mappings
nmap ,b :CtrlPBuffer<CR>
nmap ,m :CtrlPMRUFiles<CR>

" REPL
"let g:neoterm_position = 'horizontal'
"let g:neoterm_automap_keys = ',tt'

"nnoremap <silent> <f10> :TREPLSendFile<cr>
"nnoremap <silent> <f9> :TREPLSendLine<cr>
"vnoremap <silent> <f9> :TREPLSendSelection<cr>

"" run set test lib
"nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
"nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
"nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
"nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

let g:slime_python_ipython = 1
let g:slime_target = "tmux"
" tmux:
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

" Tets
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Useful maps
" hide/close terminal
nnoremap <silent> ,to :Topen<cr>
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args>

" Indenting
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType sh setlocal shiftwidth=4 tabstop=4


" YAML
autocmd FileType yaml set filetype=ansible
