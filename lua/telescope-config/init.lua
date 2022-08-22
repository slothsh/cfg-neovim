require('telescope').setup{
    defaults = {
        mappings = {
            i = {
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
        },

        marks = {
            theme = 'ivy'
        },

        keymaps = {
            theme = 'ivy'
        },

        buffers = {
            theme = 'ivy'
        },

        registers = {
            theme = 'ivy'
        },

        jumplist = {
            theme = 'ivy'
        },

        grep_string = {
            theme = 'ivy'
        },

        git_diff = {
            theme = 'ivy'
        },

        git_status = {
            theme = 'ivy'
        },

        git_stash = {
            theme = 'ivy'
        },

        git_bcommits = {
            theme = 'ivy'
        },

        git_commits = {
            theme = 'ivy'
        },

        git_branch = {
            theme = 'ivy'
        },
    },

    extensions = {}
}
