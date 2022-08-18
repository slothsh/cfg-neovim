local dap = require('dap')

-- Sign Configuration
vim.fn.sign_define('DapBreakpoint', { text='🔴', texthl='', linehl='', numhl='' })
vim.fn.sign_define('DapStopped', { text='🟡', texthl='', linehl='', numhl='' })
vim.fn.sign_define('DapLogPoint', { text='🔵', texthl='', linehl='', numhl='' })
vim.fn.sign_define('DapBreakpointCondition', { text='❗', texthl='', linehl='', numhl='' })
vim.fn.sign_define('DapBreakpointRejected', { text='🚫', texthl='', linehl='', numhl='' })

-- C++
dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = 'C:/Users/snowf/dev/bin/cpptools-win64/debugAdapters/bin/OpenDebugAD7',
    options = {
        detached = false
    }
}

-- Python
dap.adapters.python = {
  type = 'executable';
  command = 'path/to/virtualenvs/debugpy/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = true,
    },
    {
        name = 'Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
    },
}

