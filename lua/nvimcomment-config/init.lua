require('nvim_comment').setup({
    hook = function()
        local file_type = vim.api.nvim_buf_get_option(0, 'filetype')
        if file_type == 'cpp'
        or file_type == 'cc'
        or file_type == 'cxx'
        or file_type == 'hpp'
        or file_type == 'hxx'
        or file_type == 'hh'
        or file_type == 'ixx' then
            vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
        end
    end
})
