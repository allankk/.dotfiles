-- add several lines above/below without going to insert mode (ie. 2<leader>o)
vim.cmd [[
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
]]

-- OIL FILE EXPLORER
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
