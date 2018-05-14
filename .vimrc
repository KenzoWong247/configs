" sdahan vimrc
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

syntax on
set termguicolors

" ConEmu Specific Colorscheme
if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    let g:gruvbox_italic=1
    colorscheme gruvbox
    set background=dark
endif

" formatting
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set textwidth=80
set formatoptions=croq
set linebreak

" line numbers
set number

" autocompletetion
set autoindent
set copyindent
set infercase

" wildmenu
set wildmenu
set wildmode=longest:list,full

" persistent undo
set undodir=~/.vim/undodir
set undofile

" formatting for different files
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab

" plugins
call plug#begin()
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/sjl/badwolf/'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/ternjs/tern_for_vim.git'
call plug#end() 

" closetag settings
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" CtrlP settings
let g:ctrlp_working_path_mode = 0

" Specifically for Powerline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

