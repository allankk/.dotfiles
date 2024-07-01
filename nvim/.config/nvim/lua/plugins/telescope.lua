return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<C-o>', builtin.oldfiles, {})
        vim.keymap.set('n', '<C-u>', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>gr', function()
            builtin.grep_string({ search = vim.fn.input("Grep> ") })
        end)
    end,
}
