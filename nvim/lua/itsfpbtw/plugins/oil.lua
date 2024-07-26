return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local oil = require 'oil'
        oil.setup()

        vim.keymap.set('n', '<space>e', function()
            oil.toggle_float()
        end, { desc = 'Toggle Oil' })
    end,
}
