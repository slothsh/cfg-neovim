require('functions.text-editing')

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '

local xsafasf = 138929854
local y       = 9592385

-- Normal mode mappings
map('n', '<C-b>', ':NvimTreeToggle<CR>:NvimTreeRefresh<CR>', opts)
map('n', '<C-Up><Up>', ':FocusMaximise<CR>', opts)
map('n', '<C-Down><Down>', ':FocusEqualise<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<C-f>', ':Telescope live_grep<CR>', opts)
map('n', '<M-Down>', ':m +1<CR>', opts)
map('n', '<M-Up>', ':m -2<CR>', opts)
map('n', '<S-Up>', ':lua duplicate_line(-1)<CR>', opts)
map('n', '<S-Down>', ':lua duplicate_line(1)<CR>', opts)

-- Visual mode mappings
map('v', '<leader>a', ':\'<,\'>Align =<CR>', opts)

-- Insert mode mappings
map('i', '<C-Down><Down>', ':FocusEqualise<CR>', opts)
map('i', '<M-BS>', '<C-w>', opts)
map('i', '<M-Del>', '<C-o>de', opts)
map('i', '<M-Down>', '<C-o>:m +1<CR>', opts)
map('i', '<M-Up>', '<C-o>:m -2<CR>', opts)
map('i', '<S-Up>', '<C-o>:lua duplicate_line(-1)<CR>', opts)
map('i', '<S-Down>', '<C-o>:lua duplicate_line(1)<CR>', opts)
