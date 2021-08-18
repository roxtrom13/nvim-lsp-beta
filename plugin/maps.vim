" Base maps
nnoremap <space><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>w :w<CR> :edit<CR>

" Navigation
nnoremap <leader>vs :vspilt<CR>
nnoremap <leader>hs :spilt<CR>
nnoremap <C-l> <cmd>bn<CR>
nnoremap <C-h> <cmd>bp<CR>
nnoremap <S-q> <cmd>bd<CR>

" Clipboard
vnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Telescope
nnoremap <C-p> <cmd>Telescope git_files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

" Commenter
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" LSP
nnoremap <silent><leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent><leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent><leader>gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent><leader>sh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent><leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent><leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent><leader>sd :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent><leader>gn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent><leader>vll :call LspLocationList()<CR>
nnoremap <silent>F :lua vim.lsp.buf.formatting()<CR>
nnoremap <silent>K :lua vim.lsp.buf.hover()<CR>

" Prettier
nnoremap <silent><leader>f :Prettier<CR>

" Vimrc
nnoremap <silent><leader>mm :e ~/.config/nvim/plugin/maps.vim<CR>

" Remaps
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
"nnoremap <C-j> :cnext<CR>zzzv

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
