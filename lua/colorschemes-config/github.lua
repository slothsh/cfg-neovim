require('github-theme').setup({
    theme_style = 'dark_default',
    dark_sidebar = true,
})

vim.cmd([[colorscheme github_dark_default]])
vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#0d1117' })
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#0d1117' })
