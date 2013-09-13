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


" NerdTree
:command Tree :NERDTreeFind
:command TreeN :NERDTree
nmap <silent> <C-T> :NERDTreeToggle %<CR>
nmap ,f :NERDTreeFind<CR>
nmap ,t :NERDTreeToggle<CR>
let NERDTreeWinSize=64
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']

" Tabe
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>


map <F5> :FufFile **/<CR>

execute pathogen#infect()


"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold



