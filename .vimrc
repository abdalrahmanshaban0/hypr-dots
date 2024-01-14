set term=kitty
"Line Numbers
set number
set rnu

"Mouse
set mouse=a

"Theme
syntax enable
colorscheme dracula
"set background=dark
hi Normal guibg=NONE ctermbg=NONE

"Cursorline highlight
set cursorline
set cursorcolumn
highlight Cursorline guibg=#2b2b2b
highlight Cursorlolumn guibg=#2b2b2b
set hlsearch

"Clipboard
set clipboard=unnamedplus
xnoremap <silent> <leader>y y:call system("wl-copy --trim-newline", @*)<cr>:call system("wl-copy -p --trim-newline", @*)<cr>

"Spaces
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

"Spliting
set splitright
set splitbelow

"Plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Yggdroot/indentLine'
  Plug 'itchyny/lightline.vim'
call plug#end()

"NerdTree
"autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:indentLine_char='|'

"Key maps
nnoremap <C-a> ggVG
nnoremap <C-q> :q! <LF>
nnoremap <C-n> :NERDTree<CR>
"splits navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
