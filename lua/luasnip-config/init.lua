local ls = require('luasnip')
require('luasnip.loaders.from_vscode').lazy_load()
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node


-- delete luasnip nodes when changing modes
function leave_snippet()
if
((vim.v.event.old_mode == 's' and vim.v.event.new_mode == 'n') or vim.v.event.old_mode == 'i')
and require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()]
and not require('luasnip').session.jump_active
then
require('luasnip').unlink_current()
end
end

-- stop snippets when you leave to normal mode
vim.api.nvim_command([[
autocmd ModeChanged * lua leave_snippet()
]])

-- snippets


