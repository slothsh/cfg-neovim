require('functions.text-editing')

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '

-- Normal mode mappings
map('n', '<C-b>', ':NvimTreeToggle<CR>:NvimTreeRefresh<CR>', opts)
map('n', '<leader><Up>', ':FocusMaximise<CR>', opts)
map('n', '<leader><Down>', ':FocusEqualise<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<C-f>', ':Telescope live_grep<CR>', opts)
map('n', '<leader><C-f>', ':Telescope grep_string<CR>', opts)
map('n', '<M-Down>', ':m +1<CR>', opts)
map('n', '<M-Up>', ':m -2<CR>', opts)
map('n', '<C-Up>', ':lua duplicate_line(-1)<CR>', opts)
map('n', '<C-Down>', ':lua duplicate_line(1)<CR>', opts)
map('n', '<S-Up>', '{', opts)
map('n', '<S-Down>', '}', opts)
map('n', '<leader><C-g>b', ':Telescope git_branches<CR>', opts)
map('n', '<leader><C-g>f', ':Telescope git_files<CR>', opts)
map('n', '<leader><C-g>s', ':Telescope git_status<CR>', opts)
map('n', '<leader><C-g>c', ':Telescope git_commits<CR>', opts)
map('n', '<leader>1', '1<C-w>w<CR>', opts)
map('n', '<leader>2', '2<C-w>w<CR>', opts)
map('n', '<leader>3', '3<C-w>w<CR>', opts)
map('n', '<leader>4', '4<C-w>w<CR>', opts)
map('n', '<leader>5', '5<C-w>w<CR>', opts)
map('n', '<leader>6', '6<C-w>w<CR>', opts)
map('n', '<leader>7', '7<C-w>w<CR>', opts)
map('n', '<leader>8', '8<C-w>w<CR>', opts)
map('n', '<leader>9', '9<C-w>w<CR>', opts)

-- Visual mode mappings
map('v', '<leader>a', ':\'<,\'>Align =<CR>', opts)

-- Insert mode mappings
map('i', '<C-Down><Down>', ':FocusEqualise<CR>', opts)
map('i', '<M-BS>', '<C-w>', opts)
map('i', '<M-Del>', '<C-o>de', opts)
map('i', '<M-Down>', '<C-o>:m +1<CR>', opts)
map('i', '<M-Up>', '<C-o>:m -2<CR>', opts)
map('i', '<C-Up>', '<C-o>:lua duplicate_line(-1)<CR>', opts)
map('i', '<C-Down>', '<C-o>:lua duplicate_line(1)<CR>', opts)
map('i', '<S-Up>', '<C-o>{', opts)
map('i', '<S-Down>', '<C-o>}', opts)
