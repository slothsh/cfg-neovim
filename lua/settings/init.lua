local a = vim.api
local g = vim.g
local set = vim.opt
require('functions.utility')

a.nvim_set_var('mapleader', '\\<Space>')  -- set.leader key

set.syntax = 'enable'                          -- Enables syntax highlighing
set.relativenumber = true                      -- Use relative line numbering
set.hidden = true                              -- Required to keep multiple buffers open multiple buffers
set.wrap = true                                -- Display long lines as just one line
set.encoding = 'utf-8'                         -- The encoding displayed
set.pumheight = 10                             -- Makes popup menu smaller
set.fileencoding = 'utf-8'                     -- The encoding written to file
set.ruler = true                               -- Show the cursor position all the time
set.cmdheight = 2                              -- More space for displaying messages
set.iskeyword = set.iskeyword + '-'            -- treat dash separated words as a word text object"
set.mouse = 'a'                                -- Enable your mouse
set.splitbelow = true                          -- Horizontal splits will automatically be below
set.splitright = true                          -- Vertical splits will automatically be to the right
set.termguicolors = true                       -- Support terminal GUI colours
set.conceallevel = 0                           -- So that I can see `` in markdown files
set.tabstop = 4                                -- Insert 2 spaces for a tab
set.shiftwidth = 4                             -- Change the number of space characters inserted for indentation
set.smarttab = true                            -- Makes tabbing smarter will realize you have 2 vs 4
set.expandtab = true                           -- Converts tabs to spaces
set.smartindent = true                         -- Makes indenting smart
set.autoindent  = true                         -- Good auto indent
set.laststatus = 0                             -- Always display the status line
set.number = true                              -- Line numbers
set.cursorline  = true                         -- Enable highlighting of the current line
set.showtabline = 2                            -- Always show tabs
set.showmode = false                           -- We don't need to see things like -- INSERT --
set.backup = false                             -- This is recommended by coc
set.writebackup = false                        -- This is recommended by coc
set.updatetime = 300                           -- Faster completion
set.timeoutlen = 500                           -- By default timeoutlen is 1000 ms
set.formatoptions = set.formatoptions - 'cro/' -- Stop newline continution of comments
set.clipboard = 'unnamedplus'                  -- Copy paste between vim and everything else

-- Theme
-- set.background = 'dark'
-- vim.g.sonokai_style = 'default'
-- vim.cmd('colorscheme sonokai')
-- vim.cmd([[colorscheme gruvbox]])

-- Configure default shell to powershell
if is_os_winnt() then
    vim.cmd([[
        set shell=pwsh.exe
        set shellcmdflag=-c
        set shellquote=
        set shellxquote=
    ]])
end

-- Vim Move Config
vim.cmd([[ let g:move_key_modifier = 'C' ]])

-- Disable Github Copilot
vim.cmd([[ let g:copilot_enabled = 0 ]])
