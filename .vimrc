"vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
set shell=/bin/bash "Very important. Vundle errors without.
call vundle#begin()
Plugin 'tomasiser/vim-code-dark'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'luochen1990/rainbow'
Plugin 'flazz/vim-colorschemes'
Plugin 'vimwiki/vimwiki'
Plugin 'szw/vim-tags'
Plugin 'nvie/vim-flake8'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/NERDTree'
call vundle#end()

colorscheme codedark




"For rainbow:
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
    let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['darkblue', 'darkyellow', 'darkcyan', 'darkmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}


filetype plugin on
filetype plugin indent on

let g:go_fmt_command = 'goimports'

map <C-n> :NERDTreeToggle<CR>

"Colors:
syntax on
set t_Co=256
"set background=light " If you get weird different line numbers.
"colorscheme termcolors " Default just uses your Xresources. It is purity.
hi NonText ctermbg=none "Make sure hanging screen matches the background
hi LineNr ctermbg=none "Ditto for line numbers

set nu "Never don't have this
"set list
"set listchars=tab:>-
set expandtab "Tabs to spaces
set smarttab "Use shiftwidth instead of tabstop in indenting
"For highlighting:
set hlsearch "Highlight search tems.
"clear search whenever you hit space.
nnoremap <F5> :noh<return>
set tabstop=4  "each tab is 2 spaces
set softtabstop=4
set shiftwidth=4 "Number of spaces in autoindent
set autoindent
"set showmatch "use if rainbow parens isn't working

"nnoremap <F2> :!texi2pdf %<CR>
set pastetoggle=<F3>

"Luser proofing:
"set mouse=a for wimps
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
