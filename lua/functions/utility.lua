function is_os_winnt()
    return vim.loop.os_uname().sysname == 'Windows_NT'
end

function get_os_terminal()
    if is_os_winnt() then
        return 'pwsh'
    end

    return 'zsh'
end
