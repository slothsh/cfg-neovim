-- Essential Plugins
require('packer-config')
require('settings')
require('mappings')
require('treesitter-config')
require('telescope-config')

-- Other Plugins
require('autopairs-config')
require('colorschemes-config.material')
require('indentblankline-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('lualine-config')
require('luasnip-config')
require('modes-config')
require('nvim-tree-config')
require('nvimcomment-config')
require('tsrainbow-config')
require('nvimdap-config')

-- User functions
require('functions.text-editing')
require('functions.utility')

-- Themes
-- vim.opt.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])
