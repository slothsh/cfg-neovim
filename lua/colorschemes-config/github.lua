require('github-theme').setup({
    theme_style = 'dark_default',
    dark_sidebar = true,
})

vim.cmd([[colorscheme github_dark_default]])
vim.cmd([[highlight SignColumn guibg='#0d1117']])
vim.cmd([[highlight ColorColumn guibg='#0d1117']])
