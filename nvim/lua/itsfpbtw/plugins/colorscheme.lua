return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,
    opts = {
        integrations = {
            cmp = true,
            gitsigns = true,
            treesitter = true,
            markdown = true,
            telescope = {
                enabled = true,
                style = 'nvchad',
            },
        },
    },
    config = function()
        vim.cmd 'colorscheme catppuccin'
    end,
}
