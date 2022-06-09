local a = vim.api

function duplicate_line(direction)
    direction = direction == nil and 1 or direction
    direction = math.max(0, direction)

    -- Get current cursor info
    local r,c = unpack(a.nvim_win_get_cursor(0))
    local current_line = a.nvim_get_current_line()
    local col_end = #current_line
    local row_start = (direction > 0) and r or r - 1
    local format_string = '\n%s'

    if row_start == 0 then
        a.nvim_buf_set_lines(0, 0, 0, false, {''})
        row_start = 1
        direction = 0
        format_string = '%s'
    end

    local new_line = string.format(format_string, current_line)

    -- Paste new content
    print(string.format('r: %s, c: %s, start: %s, end: %s', r, c, row_start, col_end))
    a.nvim_win_set_cursor(0, { row_start, col_end })
    a.nvim_paste(new_line, false, -1)
    a.nvim_win_set_cursor(0, { r + direction, c })
end

