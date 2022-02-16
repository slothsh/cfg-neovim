-- require('onedarkpro').load()
vim.o.background = 'dark'

local mycolours = {
    -- TODO
}

local onedarkpro = require("onedarkpro")
onedarkpro.setup({
    -- Theme can be overwritten with 'onedark' or 'onelight' as a string
    theme = function()
        if vim.o.background == "dark" then
            return "onedark"
        else
            return "onelight"
        end
    end,
    colors = {
        onedark = {
            bg = "#232322",
        }
    }, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
    hlgroups = {
        NvimTreeFolderIcon = { fg = "#65a6ff" },
    }, -- Override default highlight groups
    filetype_hlgroups = nil, -- Override default highlight groups for specific filetypes
    plugins = { -- Override which plugins highlight groups are loaded
        native_lsp = true,
        polygot = true,
        treesitter = true,
        -- NOTE: Other plugins have been omitted for brevity
    },
    styles = {
        -- hello world
        strings = "NONE", -- Style that is applied to strings
        comments = "NONE", -- Style that is applied to comments
        keywords = "NONE", -- Style that is applied to keywords
        functions = "bold", -- Style that is applied to functions
        variables = "bold", -- Style that is applied to variables
    },
    options = {
        bold = true, -- Use the themes opinionated bold styles?
        italic = false, -- Use the themes opinionated italic styles?
        underline = false, -- Use the themes opinionated underline styles?
        undercurl = false, -- Use the themes opinionated undercurl styles?
        cursorline = true, -- Use cursorline highlighting?
        transparency = false, -- Use a transparent background?
        terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
        window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
    }
})
onedarkpro.load()
