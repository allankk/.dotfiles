require("allan.set")
require("allan.remap")
require("allan.lazy")

-- fuzzy search keybinds
--vim.api.nvim_set_keymap('n', '<c-P>',
--    "<cmd>lua require('fzf-lua').files()<CR>",
--    { noremap = true, silent = true })
--
--vim.api.nvim_set_keymap('n', '<c-F>',
--    "<cmd>lua require('fzf-lua').grep({ grep_opts='--ignore-case --binary-files=without-match --line-number --recursive --color=auto --perl-regexp' }) <CR>",
--    { noremap = true, silent = true })

-- copy to clipboard using Y
vim.api.nvim_set_keymap('x', 'Y', '"+y', {noremap = true, silent = true})
    
-- keybind to move between windows with tmux integration
vim.cmd[[
    augroup netrw_mapping
      autocmd!
      autocmd filetype netrw call NetrwMapping()
    augroup END
    
    function! NetrwMapping()
      nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>
    endfunction
]]

vim.g.netrw_liststyle = 3
