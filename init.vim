syntax on
filetype plugin indent on
set ts=4 et sts=4 sw=4 ai si
set rnu
set clipboard=unnamed
set termguicolors

call plug#begin()
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	Plug 'morhetz/gruvbox'
	Plug 'ghifarit53/tokyonight-vim' 
	Plug 'rebelot/kanagawa.nvim'
    Plug 'kaicataldo/material.vim'
    Plug 'dracula/vim'
    Plug 'sickill/vim-monokai'
    Plug 'wuelnerdotexe/vim-enfocado'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:coc_global_extensions = ['coc-git', 'coc-rust-analyzer', 'coc-vimlsp', 'coc-java', 'coc-html', 'coc-clangd']

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"colo kanagawa
 colo gruvbox
"colo tokyonight

