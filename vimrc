" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" read configs for plugins
for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
  exe 'source' f
endfor

" http://superuser.com/a/402084
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" generel settings
set encoding=utf-8
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
set autoindent          " automatisch einrücken
set incsearch           " Finden schon beim tippen
set ignorecase          " Ignore case when searching...
set smartcase           " ...unless we type a capital


" NerdTree
:command Tree :NERDTreeFind
:command TreeN :NERDTree
nmap ,f :NERDTreeFind<CR>
nmap ,t :NERDTreeToggle<CR>
let NERDTreeWinSize=64
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']

" Tabe
nnoremap <C-S-T> :tabedit<CR>
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>


map <F5> :FufFile **/<CR>

execute pathogen#infect()

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Airline
let g:airline_theme='base16_ashes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let s:IA = airline#themes#get_highlight('Tabline')
