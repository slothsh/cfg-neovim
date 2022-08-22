require('telescope').setup{
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["<C-h>"] = "which_key",
                ["<C-l>"] = "file_vsplit",
                ["<C-k>"] = "file_split",
            }
        }
    },
    pickers = {
        live_grep = {
            theme = 'ivy'
        },

        find_files = {
            file_ignore_patterns = { 'node_modules/.*', 'build/cmake/.*'},
            theme = 'ivy'
        }
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },

    git_diff = {

    },

    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   etension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    }
}
