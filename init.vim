# Basic config
syntax on
set number
set cursorline
set tabstop=4
set shiftwidth=4
set history=1000
set clipboard=unnamed
set nowrap
set ignorecase
set termguicolors

# GUI config
set guifont=Consolas:h15

# Plugins download
call plug#begin()
	# Color schemes
	Plug 'morhetz/gruvbox'
	Plug 'ghifarit53/tokyonight-vim' 

	# Other plugins
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
call plug#end()

# Colorscheme
colorscheme tokyonight
#colorscheme grubbox

# NERDTree config
## Show NERDTree on start
autocmd VimEnter * NERDTree | wincmd p
## Close NERDTree split when it's the last split
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

# Neovide config
let g:neovide_cursor_animation_length=0.05


# 
#if !exists("g:os")
#    if has("win64") || has("win32") || has("win16")
#        let g:os = "Windows"
#    else
#        let g:os = substitute(system('uname'), '\n', '', '')
#    endif
#endif
#
#if g:os == "Windows"
#	:cd C:\Users\mis\Desktop
#endif
