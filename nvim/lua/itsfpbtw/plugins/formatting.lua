return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
        {
            '<leader>bf',
            function()
                require('conform').format { async = true, lsp_fallback = true }
            end,
            mode = 'n',
            desc = '[B]uffer [F]ormat',
        },
    },
    opts = {
        notify_on_error = false,
        format_on_save = function(bufnr)
            local disable_filetypes = { c = true, cpp = true, javascript = true }
            return {
                timeout_ms = 500,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
            }
        end,
        formatters_by_ft = {
            lua = { 'stylua' },
            javascript = { 'prettier' },
            typescript = { 'prettier' },
        },
    },
}
