nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>gs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

