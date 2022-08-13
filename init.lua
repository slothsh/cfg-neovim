-- Essential Plugins
require('packer-config')
require('settings')
require('mappings')
require('treesitter-config')
require('telescope-config')

-- Other Plugins
require('luasnip-config')
require('autopairs-config')
require('indentblankline-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('lualine-config')
require('modes-config')
require('nvim-tree-config')
require('nvimcomment-config')
require('tsrainbow-config')
require('nvimdap-config')
require('nvimgitsigns-config')
require('nvimgps-config')
require('colorschemes-config.github')
require('align-config')

-- User functions
require('functions.text-editing')
require('functions.utility')
