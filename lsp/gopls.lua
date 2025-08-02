return {
    on_attach = function(client, bufnr)
        -- Example: Set keymaps for LSP features
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'Go to definition' })
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr, desc = 'Show references' })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'Code action' })
        -- ... more keymaps
    end,
    cmd = {"gopls"},
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}


