set number		" Line Number
set shiftwidth=2	" Tabstop
set softtabstop=2
set expandtab
set background=light    " Switch this to dark for dark terminals
syntax on		" Syntax
set hlsearch		" Highlite Search
set ignorecase
set smartcase
set ruler		" show cursor position
set laststatus=2	" 2 Status
set visualbell		" no piep
set cmdheight=2		" 2 line Commands

:command Tree :NERDTreeFind
:command TreeN :NERDTree
let NERDTreeWinSize=64
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']

map <F5> :FufFile **/<CR>

execute pathogen#infect()
