
vim.opt.nu          = true
vim.opt.relativenumber = true

vim.opt.tabstop     = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab   = true
vim.opt.hlsearch    = false
vim.opt.incsearch   = true

vim.opt.smartindent = true

vim.opt.wrap        = false

-- automatically update files to reduce conflicts when editing from several places 
vim.opt.autoread    = true

-- disable swap files
vim.opt.swapfile    = false

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.splitbelow    = true
vim.o.splitright    = true

-- set markdown preview theme to light
vim.g.mkdp_theme = 'light'

-- create a signcolumn (for lsp/git etc) so text isn't pushed to the right
vim.wo.signcolumn = "yes"
