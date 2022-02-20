local a = vim.api

function duplicate_line(direction)
    direction = direction == nil and 1 or direction
    direction = math.max(0, direction)

    -- Get current cursor info
    local r,c = unpack(vim.api.nvim_win_get_cursor(0))
    local buffer = a.nvim_get_current_buf()
    local current_line = a.nvim_get_current_line()
    local col_end = #current_line
    local row_start = (direction > 0) and r or r - 1
    local format_string = '\n%s'
    local new_line = string.format(format_string, current_line)

    -- Paste new content
    a.nvim_win_set_cursor(0, { row_start, col_end })
    a.nvim_paste(new_line, false, -1)
    a.nvim_win_set_cursor(0, { r + direction, c })
end
