syntax on

set ignorecase
set termguicolors
set smarttab
set cindent
set expandtab
set shiftwidth=2
set number
set relativenumber
set tabstop=2 softtabstop=2
set encoding=utf-8
set nohlsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set signcolumn=yes
set colorcolumn=92
set guicursor=

call plug#begin('~/.vim/plugged')
" LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'

Plug 'nvim-lua/completion-nvim'

Plug 'simrat39/symbols-outline.nvim'

" Color schemes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

" Syntax
Plug 'tbastos/vim-lua'

call plug#end()


fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    let ayucolor='dark'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', ["gruvbox"])
    else
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=#282140
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd3
endfun
call ColorMyPencils()

hi Normal guibg=NONE ctermbg=NONE

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require("roier")

let mapleader = " "

nnoremap <leader>vwm :call ColorMyPencils()<CR>

" Buffer navigation
nnoremap <C-l> <cmd>bn<cr>
nnoremap <C-h> <cmd>bp<cr>
nnoremap <S-q> <cmd>bd<cr>

" Maps
nnoremap <leader>pv :Vex<CR>
nnoremap <space><CR> :so ~/.config/nvim/init.vim<CR>
vnoremap <leader>p "_dP
nnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <silent><leader>e :edit<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
