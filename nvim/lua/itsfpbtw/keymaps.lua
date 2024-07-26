vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap

map.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Windows
map.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Buffers
map.set('n', '<leader>bf', vim.lsp.buf.format, { desc = '[B]uffer [F]ormat' })
map.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = '[B]uffer [D]elete' })
map.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
map.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
