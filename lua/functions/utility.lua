function is_os_winnt()
    return vim.loop.os_uname().sysname == 'Windows_NT'
end

function get_os_terminal()
    if is_os_winnt() then
        return 'pwsh'
    end

    return 'zsh'
end

function toggle_github_copilot()
    if vim.g.copilot_enabled == 1 then
        vim.g.copilot_enabled = 0
        print "Copilot disabled"
    else
        vim.g.copilot_enabled = 1
        print "Copilot enabled"
    end
end
