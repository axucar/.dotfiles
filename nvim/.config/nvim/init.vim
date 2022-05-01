
call plug#begin()

Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'gruvbox-community/gruvbox'


" telescope requirements...
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'


call plug#end()

lua require('chihiro')

let mapleader = " "
nnoremap <leader>n :set norelativenumber!<CR>
nnoremap <leader>so :source ~/.config/nvim/init.vim<CR>
