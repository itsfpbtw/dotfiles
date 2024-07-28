return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        local wk = require 'which-key'

        wk.setup {
            icons = {
                mappings = false,
            },
        }

        wk.add {
            {
                '<leader>?',
                function()
                    require('which-key').show { global = false }
                end,
                desc = 'Buffer Local Keymaps',
            },

            { '<leader>b', group = '[B]uffer' },
            { '<leader>c', group = '[C]ode' },
            { '<leader>d', group = '[D]ocument' },
            { '<leader>f', group = '[F]iles' },
            { '<leader>r', group = '[R]ename' },
            { '<leader>s', group = '[S]earch' },
            { '<leader>w', group = '[W]orkspace' },
            { '<leader>t', group = '[T]oggle' },
            { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
        }
    end,
}
