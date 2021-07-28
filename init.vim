syntax on

call plug#begin('~/.vim/plugged')

" LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

" Color schemes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Syntax plugins
Plug 'tbastos/vim-lua'

" Helpers
Plug 'preservim/nerdcommenter'

" Status bottom bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

lua require("roier")

let mapleader = " "
