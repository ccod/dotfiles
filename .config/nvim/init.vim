if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'calviken/vim-gdscript3'
Plug 'rust-lang/rust.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovimhaskell/haskell-vim'
" Plug 'chriskempson/base16-vim'
Plug 'kien/ctrlp.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'janko/vim-test'

" PlantUML stuff
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" Auto complete, needs extra care
" TODO: create script to manage install
" Plug 'ycm-core/YouCompleteMe'
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim


