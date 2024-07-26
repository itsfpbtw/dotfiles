vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking',
    group = vim.api.nvim_create_augroup('itsfpbtw-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
