require('bufferline').setup {}

vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':bdelete<CR>', { noremap = true, silent = true })
