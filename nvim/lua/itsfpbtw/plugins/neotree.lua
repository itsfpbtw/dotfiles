return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        '3rd/image.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { '<leader>fe', ':Neotree reveal<CR>', desc = '[F]ile [E]xplorer' },
    },
    opts = {
        filesystem = {
            window = {
                mappings = {
                    ['e'] = 'close_window',
                },
            },
        },
    },
}
