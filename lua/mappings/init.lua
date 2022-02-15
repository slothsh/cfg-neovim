local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '

-- Normal mode mappings
map('n', '<C-b>', ':NvimTreeToggle<CR>:NvimTreeRefresh<CR>', opts)
map('n', '<C-Up><Up>', ':FocusMaximise<CR>', opts)
map('n', '<C-Down><Down>', ':FocusEqualise<CR>', opts)

-- Insert mode mappings
map('i', '<C-Down><Down>', ':FocusEqualise<CR>', opts)
map('i', '<M-BS>', '<C-w>', opts)
map('i', '<M-Del>', '<C-o>de', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
