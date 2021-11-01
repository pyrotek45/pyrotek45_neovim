"auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
    silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
                \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif                       

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.config/nvim/plugged')   
Plug 'wjsetzer/freepascal-vim'  " freepascal jank
Plug 'morhetz/gruvbox'          " vim gruvbox color scheme
Plug 'sheerun/vim-polyglot'     " syntax highlight for more langs
call plug#end()

set nocompatible
syntax on
filetype on
colorscheme gruvbox

set inccommand=nosplit
set showcmd
set nohls
set wildmenu
set number
set smarttab
set expandtab
set noerrorbells
set shiftwidth=4
set tabstop=4 softtabstop=4
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set colorcolumn=80
set ignorecase

let g:netrw_banner = 0
let g:netrw_liststyle = 4
let g:netrw_keepdir= 0

let mapleader = " "

"exit terminal mode with escape"
tnoremap <esc> <C-\><C-n> 

"main helper functions"
noremap <leader>w  :w <cr>
noremap <leader>Q :q! <cr> 
noremap <leader>q  :q <cr> 
noremap <leader>n  :tabedit <cr> 
noremap <leader>r  :read!  

"edit files"
noremap <leader>ec :tabedit $MYVIMRC <cr> 
noremap <leader>sc :source $MYVIMRC <cr> 
noremap <leader>e. :e . <cr> 
noremap <leader>en :tabedit . <cr> 
noremap <leader><tab> :Lexplore <bar> :vertical resize 40 <cr> 

"window movement"
noremap <leader>l <C-w>l 
noremap <leader>k <C-w>k 
noremap <leader>j <C-w>j 
noremap <leader>h <C-w>h 
noremap <leader>o <C-w>o 

"splits"
noremap <leader>sv :vsplit <cr>
noremap <leader>sh :split <cr>

"tab movement"
noremap <leader>( gT
noremap <leader>) gt
noremap <leader>c :tabo <cr>

"terminal commands
noremap <leader>t :!

"tools"
"table"
vmap <leader>t :!column -t <cr> gv

"indent"
vmap <leader>l >gv
vmap <leader>h <gv

"normal command highlight"
vmap <leader>n :norm 

