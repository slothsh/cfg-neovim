-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.g.is_diag_on = true

function toggle_diag()
    if vim.g.is_diag_on then
        vim.diagnostic.hide()
        vim.g.is_diag_on = false
    else
        vim.diagnostic.show()
        vim.g.is_diag_on = true
    end
end

vim.api.nvim_set_keymap('n', '<space>h', '<cmd>lua toggle_diag()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.bufereferences()<CR>', opts)
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'clangd', 'tsserver', 'cmake', 'vuels', 'html', 'cssls', 'emmet_ls', 'tailwindcss', 'bashls', 'rls', 'powershell_es' }
for _, lsp in pairs(servers) do
    if lsp == 'emmet_ls' then
        require('lspconfig')[lsp].setup {
            on_attach = on_attach,
            filetypes = { 'html', 'vue', 'vuex', 'htm', 'js', 'jsx', 'ts', 'tsx' },
            capabilities = capabilities,
            flags = {
                -- This will be the default in neovim 0.7+
                debounce_text_changes = 150,
            }
        }
    elseif lsp == 'rls' then
        require('lspconfig')[lsp].setup {
            on_attach = on_attach,
            capabilities = capabilities,
            flags = {
                -- This will be the default in neovim 0.7+
                debounce_text_changes = 150,
            },
            settings = {
                rust = {
                    unstable_features = true,
                    build_on_save = false,
                    all_features = true,
                }
            }
        }
    elseif lsp == 'powershell_es' then
        require('lspconfig')[lsp].setup {
            bundle_path = 'C:/Users/snowf/AppData/Local/PowershellEditorServices',
        }
    else 
        require('lspconfig')[lsp].setup {
            on_attach = on_attach,
            capabilities = capabilities,
            flags = {
                -- This will be the default in neovim 0.7+
                debounce_text_changes = 150,
            }
        }
    end
end
