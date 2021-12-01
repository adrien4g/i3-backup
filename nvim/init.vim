call plug#begin()
" Theme
Plug 'morhetz/gruvbox'
" Multiple cursor
Plug 'mg979/vim-visual-multi'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Language pack
Plug 'sheerun/vim-polyglot'
" Auto pairs
Plug 'jiangmiao/auto-pairs'
" Color hex
Plug 'norcalli/nvim-colorizer.lua'
" Footer - show mode
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Python - JS Autocomplete
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'maralla/completor.vim', { 'do': 'pip install jedi && make js' }
Plug 'deoplete-plugins/deoplete-jedi'
" File manaer
Plug 'preservim/nerdtree'
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Svelte
Plug 'evanleck/vim-svelte'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'codechips/coc-svelte', {'do': 'npm install'}
call plug#end()

" Configs vim
set number
set relativenumber
set autoindent
set expandtab
set scrolloff=7
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fileformat=unix
set termguicolors
syntax enable
set encoding=utf-8

" Deoplete
let g:python_host_prog = '/bin/python'
let g:python3_host_prog = '/bin/python'
" Completor
let g:completor_python_binary = 'python'

" Theme -------------------------
colorscheme gruvbox
set background=dark

" Shortscuts -------------------------
let mapleader="\<space>"
" add ; to end (leader + ;)
nnoremap <leader>; A;<esc>

" NERDTree -------------------------
let NERDTreeQuitOnOpen=1                                                            
let g:NERDTreeMinimalUI=1
" Open NERDTree (f2)
nmap <F2> :NERDTreeToggle<CR>

" Airline -------------------------
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
" Previous tab (leader + 1)
nmap <leader>1 :bp<CR>
" Next tab (leader + 2)
nmap <leader>2 :bn<CR>
" Close tab (leader + w)
nmap <leader>w :bd<CR>

" Nvim colorizer -------------------------
lua require 'colorizer'.setup()

" FZF -------------------------
" Open simple file manager (ctrl + b)
nnoremap <c-b> :Files<cr> 
" Find the work in files (ctrl + f)
nnoremap <c-f> :Ag<space>

" Markdown --------------
let g:mkdp_auto_start = 1
let g:mkdp_open_to_the_world = 1
