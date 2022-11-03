vim.cmd([[set nocompatible]])
vim.cmd([[filetype plugin on]])
-- vim.cmd([[syntax on]])

-- Master Wiki
local personal_wiki = { path = '~/.wiki/personal', syntax = 'markdown', ext = '.md' }
local projects_wiki = { path = '~/.wiki/projects', syntax = 'markdown', ext = '.md' }
local docs_wiki = { path = '~/.wiki/docs', syntax = 'markdown', ext = '.md' }

-- Declare wikis
vim.g.vimwiki_list = {
    personal_wiki,
    projects_wiki,
    docs_wiki,
}

-- Mappings
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader>wi', ':VimwikiIndex<CR>', opts)
map('n', '<leader>wdi', ':VimwikiDiaryIndex<CR>', opts)
map('n', '<leader>wn', ':VimwikiMakeDiaryNote<CR>', opts)
map('n', '<leader>wy', ':VimwikiMakeYesterdayDiaryNote<CR>', opts)
map('n', '<leader>wt', ':VimwikiMakeTomorrowDiaryNote<CR>', opts)
map('n', '<leader>wgi', ':VimwikiGenerateLinks<CR>', opts)
map('n', '<leader>wgd', ':VimwikiDiaryGenerateLinks<CR>', opts)
map('n', '<leader>wu', ':VimwikiUISelect<CR>', opts)

map('n', '<leader>dw', ':VimwikiDeleteFile<CR>', opts)
map('n', '<leader>rw', ':VimwikiRenameFile<CR>', opts)

map('n', '<leader>gl', ':VimwikiFollowLink<CR>', opts)
map('n', '<leader>gb', ':VimwikiGoBackLink<CR>', opts)
map('n', '<leader>gs', ':VimwikiSplitLink<CR>', opts)
map('n', '<leader>gv', ':VimwikiVSplitLink<CR>', opts)
map('n', '<leader>wg', ':VimwikiGoto<CR>', opts)
map('n', '<leader>w]', ':VimwikiNextLink<CR>', opts)
map('n', '<leader>w[', ':VimwikiPrevLink<CR>', opts)
map('n', '<leader>tt', ':VimwikiToggleListItem<CR>', opts)
map('n', '<leader>tr', ':VimwikiToggleRejectedListItem<CR>', opts)
-- map('n', '<leader>t<', ':VimwikiListChangeLvl << 1<CR>', opts)
-- map('n', '<leader>t>', ':VimwikiListChangeLvl >> 1<CR>', opts)

map('n', '<leader>gss', ':VimwikiSearch ', opts)
map('n', '<leader>gsb', ':VimwikiBacklinks<CR>', opts)
map('n', '<leader>n', ':lnext<CR>', opts)
map('n', '<leader>N', ':lprevious<CR>', opts)

map('n', '<leader>ct', ':VimwikiTable 5 2<CR>', opts)
map('n', '<leader>m[', ':VimwikiTableMoveColumnLeft<CR>', opts)
map('n', '<leader>m]', ':VimwikiTableMoveColumnRight<CR>', opts)
