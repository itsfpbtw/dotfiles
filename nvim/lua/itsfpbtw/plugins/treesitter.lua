return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = {
            'c',
            'lua',
            'luadoc',
            'vim',
            'vimdoc',
            'query',
            'markdown',
            'javascript',
            'typescript',
            'yaml',
            'dockerfile',
            'sql',
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    },
    config = function(_, opts)
        require('nvim-treesitter.install').prefer_git = true
        require('nvim-treesitter.configs').setup(opts)
    end,
}
