return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind-nvim'
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use "beauwilliams/focus.nvim"
    use 'olimorris/onedarkpro.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'Shatur/neovim-cmake'
    use 'mfussenegger/nvim-dap'
    use "lukas-reineke/indent-blankline.nvim"
    use 'RRethy/nvim-align'
    use 'marko-cerovac/material.nvim'
    use 'mvllow/modes.nvim'
    use 'romgrk/barbar.nvim'
    use {"akinsho/nvim-toggleterm.lua"}
    use "rafamadriz/friendly-snippets"
    -- use { 'mg979/vim-visual-multi', run = function() vim.fn['vim-visual-multi#plugin#visual-multi.vim']() end }
    -- use 'tpope/vim-commentary'
end)
