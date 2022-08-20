local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '

-- Primary nvim dap keys
map('n', '<F5>',       "<Cmd>lua require'dap'.continue()<CR>", opts)
map('n', '<Leader><F5>', "<Cmd>lua require'dap'.terminate(require\'dap\'.session())<CR>", opts)
map('n', '<F10>',      "<Cmd>lua require'dap'.step_over()<CR>", opts)
map('n', '<F11>',      "<Cmd>lua require'dap'.step_into()<CR>", opts)
map('n', '<F12>',      "<Cmd>lua require'dap'.step_out()<CR>", opts)
map('n', '<Leader>b',  "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
map('n', '<Leader>B',  "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<Leader>lp', "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
map('n', '<Leader>dr', "<Cmd>lua require'dap'.repl.open()<CR>", opts)
map('n', '<Leader>dl', "<Cmd>lua require'dap'.run_last()<CR>", opts)
