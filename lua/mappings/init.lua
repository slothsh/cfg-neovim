require('functions.text-editing')
require('functions.utility')

-- Plugin mappings
require('nvimdap-config.mappings')

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


vim.g.mapleader = ' '

-- Normal mode mappings
map('n', 'q', 'i', opts)
map('n', 'Q', 'I', opts)
map('n', '<leader>q', 'q', opts)
map('n', '<C-b>', ':NvimTreeToggle<CR>:NvimTreeRefresh<CR>', opts)
map('n', '<leader><Up>', ':FocusMaximise<CR>', opts)
map('n', '<leader><Down>', ':FocusEqualise<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<C-f>', ':Telescope live_grep<CR>', opts)
map('n', '<leader><C-f>', ':Telescope grep_string<CR>', opts)
map('n', '<leader>vw', ':Telescope vimwiki<CR>', opts)
map('n', '<leader>bb', ':Telescope buffers<CR>', opts)
map('n', '<leader>rr', ':Telescope registers<CR>', opts)
map('n', '<leader>mm', ':Telescope marks<CR>', opts)
map('n', '<leader>kk', ':Telescope keymaps<CR>', opts)
map('n', '<leader>jj', ':Telescope jumplist<CR>', opts)
map('n', '<leader>hh', ':Telescope search_history<CR>', opts)
map('n', '<leader>??', ':Telescope help_tags<CR>', opts)
map('n', '<M-Up>', '<Plug>MoveLineUp', opts)
map('n', '<M-Down>', '<Plug>MoveLineDown', opts)
map('n', '<M-Left>', '<Plug>MoveCharLeft', opts)
map('n', '<M-Right>', '<Plug>MoveCharRight', opts)
map('n', '<C-j>', ':lua duplicate_line(1)<CR>', opts)
map('n', '<C-k>', ':lua duplicate_line(-1)<CR>', opts)
map('n', '<C-Up>', ':lua duplicate_line(-1)<CR>', opts)
map('n', '<C-Down>', ':lua duplicate_line(1)<CR>', opts)
map('n', '<S-Up>', '{', opts)
map('n', '<S-Down>', '}', opts)
map('n', '<leader>ggb', ':Telescope git_branches<CR>', opts)
map('n', '<leader>ggf', ':Telescope git_files<CR>', opts)
map('n', '<leader>ggh', ':Telescope git_stash<CR>', opts)
map('n', '<leader>ggs', ':Telescope git_status<CR>', opts)
map('n', '<leader>ggc', ':Telescope git_commits<CR>', opts)
map('n', '<leader>ggd', ':Telescope git_bcommits<CR>', opts)
map('n', '<leader>1', '1<C-w>w<CR>', opts)
map('n', '<leader>2', '2<C-w>w<CR>', opts)
map('n', '<leader>3', '3<C-w>w<CR>', opts)
map('n', '<leader>4', '4<C-w>w<CR>', opts)
map('n', '<leader>5', '5<C-w>w<CR>', opts)
map('n', '<leader>6', '6<C-w>w<CR>', opts)
map('n', '<leader>7', '7<C-w>w<CR>', opts)
map('n', '<leader>8', '8<C-w>w<CR>', opts)
map('n', '<leader>9', '9<C-w>w<CR>', opts)
map('n', '+', ':res +5<CR>', opts)
map('n', '<M-+>', ':vert res +8<CR>', opts)
map('n', '<leader>+', ':vert res 999<CR>', opts)
map('n', '<leader>*', '<C-W>=<CR>', opts)
map('n', '-', ':res -5<CR>', opts)
map('n', '<M-->', ':vert res -8<CR>', opts)
map('n', '<leader>-', ':vert res 0<CR>', opts)
map('n', '<leader>hc', ':noh<CR>', opts)
map('n', '<leader><C-a>', 'ggVG', opts)
map('n', '<leader>`', ':terminal<CR>', opts)
map('n', '!', ':!', opts)
map('n', '<leader>ww', ':bd<CR>', opts)
map('n', '<leader>ww<CR>', ':bd!<CR>', opts)
map('n', '<leader>sb', ':%s/', opts)


-- Visual mode mappings
map('v', '<leader>a', ':\'<,\'>Align =<CR>', opts)
map('v', '<S-Up>', '{', opts)
map('v', '<S-Down>', '}', opts)
map('v', '<leader>sb', ":'<,'>s/", opts)

-- Insert mode mappings
map('i', '<C-z>', '<C-o>:undo<CR>', opts)
map('i', '<C-Down><Down>', ':FocusEqualise<CR>', opts)
map('i', '<M-BS>', '<C-w>', opts)
map('i', '<M-Del>', '<C-o>de', opts)
map('i', '<M-Down>', '<C-o>:m +1<CR>', opts)
map('i', '<M-Up>', '<C-o>:m -2<CR>', opts)
map('i', '<C-Up>', '<C-o>:lua duplicate_line(-1)<CR>', opts)
map('i', '<C-Down>', '<C-o>:lua duplicate_line(1)<CR>', opts)
map('i', '<S-Up>', '<C-o>{', opts)
map('i', '<S-Down>', '<C-o>}', opts)
map('i', '<C-A-Up>', '<C-o><S-o>', opts)
map('i', '<C-A-Down>', '<C-o>o', opts)
map('i', '<C-l>', '<Del>', opts)

-- barbar mappings
--
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
map('n', '<leader><A-c>', ':BufferCloseAllButCurrent<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<A-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bn', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Terminal mappings
map('t', '<A-c>', '<C-\\><C-n>:bd!<CR>', opts)
map('t', '<Esc>', '<C-\\><C-n><CR>', opts)

-- Copilot mappings
-- vim.cmd([[
--     imap <silent><script><expr> <C-\> copilot#Accept("\<CR>")
--     let g:copilot_no_tab_map = v:true
-- ]])

-- Add key mapping to enable github copilot globally
map('n', '<leader>ggp', ':lua toggle_github_copilot()<CR>', opts)

