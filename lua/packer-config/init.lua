return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind-nvim'
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use 'beauwilliams/focus.nvim'
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
    use 'mfussenegger/nvim-dap'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'RRethy/nvim-align'
    use 'marko-cerovac/material.nvim'
    use 'mvllow/modes.nvim'
    use 'romgrk/barbar.nvim'
    use 'rafamadriz/friendly-snippets'
    use 'SoulXP/so-snippets'
    use { 'ellisonleao/gruvbox.nvim' }
    use 'PowerShell/PowerShellEditorServices'
    use 'p00f/nvim-ts-rainbow'
    use 'savq/melange'
    use 'sainnhe/sonokai'
    use { 'lewis6991/gitsigns.nvim' }
    use { "SmiteshP/nvim-gps", requires = "nvim-treesitter/nvim-treesitter" }
    use 'fedepujol/move.nvim'
    use "projekt0n/github-nvim-theme"
    use "github/copilot.vim"
    use { "Vonr/align.nvim" }
    use 'mfussenegger/nvim-dap-python'
    use { 'kylechui/nvim-surround', tag = '*' }
    use {'glepnir/dashboard-nvim'}
end)
