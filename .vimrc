set term=kitty
"Line Numbers
set number
set rnu

"Mouse
set mouse=a

"Theme
syntax enable

" Workaround for creating transparent bg
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
            \ |    highlight LineNr     ctermbg=NONE guibg=NONE
            \ |    highlight SignColumn ctermbg=NONE guibg=NONE

"Cursorline highlight
"set cursorline
"set cursorcolumn
set hlsearch

"Clipboard
""set clipboard=unnamedplus
xnoremap <silent> <C-c> :w !wl-copy<CR><CR>

"auto closeing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>\<C-f>" : "\<CR>"

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
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
colorscheme dracula
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
