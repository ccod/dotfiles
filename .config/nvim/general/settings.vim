set encoding=utf-8
let mapleader=" "

set nobackup
set nowritebackup
set noswapfile

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab
set autoindent
set smartindent

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

set number
set numberwidth=5
set relativenumber

set splitbelow
set splitright

set termguicolors
set background=light
colorscheme pencil

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1

let g:ycm_semantic_triggers = { 'elm' : ['.'] }


" let g:pencil_higher_contrast_ui = 1
let g:pencil_terminal_italics = 1

let g:test#javascript#mocha#options = "--reporter dot"
let test#strategy = "neovim"

let g:ctrlp_custom_ignore = '\v[\/]node_modules$'

" snippet work
let g:UltiSnipsExpandTrigger="<m-f>" 
let g:UltiSnipsJumpForwardTrigger="<m-f>"
let g:UltiSnipsJumpBackwardTrigger="<m-b>"


