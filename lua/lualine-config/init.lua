local function file_info()
    return [[%f %m %=]]
end

local gps = require('nvim-gps')

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '❘', right = '❘'},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true
    },
    sections = {
        lualine_a = { {'mode', padding = 5} },
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = { file_info, {gps.get_location, cond = gps.is_available} },
        lualine_x = {'encoding', 'fileformat', 'filetype', "os.date('%H:%M:%S %d-%m-%Y')"},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
