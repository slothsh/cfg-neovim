local opt = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<A-j>', ":MoveLine(1)<CR>", opt)
vim.api.nvim_set_keymap('n', '<A-k>', ":MoveLine(-1)<CR>", opt)
vim.api.nvim_set_keymap('v', '<A-j>', ":MoveBlock(1)<CR>", opt)
vim.api.nvim_set_keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", opt)
vim.api.nvim_set_keymap('n', '<A-l>', ":MoveHChar(1)<CR>", opt)
vim.api.nvim_set_keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", opt)
vim.api.nvim_set_keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", opt)
vim.api.nvim_set_keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", opt)
