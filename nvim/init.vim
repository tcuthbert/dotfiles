call plug#begin('~/.vim/plugged')

" Defaults
Plug 'tpope/vim-sensible'

" Git
Plug 'tpope/vim-fugitive'

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

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Auto Complete
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
"Plug 'davidhalter/jedi-vim'

" HTML
Plug 'othree/html5.vim'

" Python
"Plug 'bfredl/nvim-ipy'
"Plug 'lambdalisue/vim-pyenv'

" Ansible
Plug 'pearofducks/ansible-vim'

" UI
Plug 'freeo/vim-kalisi'
Plug 'bling/vim-airline'

" REPL
Plug 'kassio/neoterm'

" Make
Plug 'benekastah/neomake'

" Surrounds
Plug 'tpope/vim-surround'

" Grep
Plug 'mhinz/vim-grepper'

" Test
Plug 'janko-m/vim-test'

" Project
Plug 'tpope/vim-projectionist'

" Editting
Plug 'scrooloose/nerdcommenter'

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

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer')  }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


" Add plugins to &runtimepath
call plug#end()

" Line Numbers
set nu

" Theme
colorscheme kalisi
"set background=light
" or 
set background=dark

" if you don't set the background, the light theme will be used
set t_Co=256

" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Auto Completion
" use deoplete.
let g:deoplete#enable_at_startup = 1

" Python
"let g:jedi#squelch_py_warning = 1
"let g:jedi#force_py_version=3
"autocmd FileType python setlocal omnifunc=jedi#completions
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#smart_auto_mappings = 0
"let g:jedi#show_call_signatures = 0
let g:python_version = matchstr(system("python --version 2>&1 | cut -d' ' -f2"), '^[0-9]')
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux"
	let g:has_pyenv = matchstr(system("command -v pyenv >/dev/null 2>&1; echo $?"), '0')
	if g:has_pyenv =~ 0
		if g:python_version =~ 3
			let g:python_host_prog = "/usr/bin/python2"
		else
			let g:python3_host_prog = "/usr/bin/python3"
		endif
	endif
else
	let g:has_pyenv = matchstr(system("command -v pyenv >/dev/null 2>&1; echo $?"), '0')
	if g:has_pyenv =~ 0
		if g:python_version =~ 3
			let g:python_host_prog = "/usr/local/bin/python2"
		else
			let g:python3_host_prog = "/usr/local/bin/python3"
		endif
	endif
endif

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
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
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

" YAML
autocmd FileType yaml set filetype=ansible
