local utils = require('utils')
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape

-- Telescope stuff
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

-- COQ stuff
utils.map("i", "<Esc>", [[pumvisible() ? "\<C-e><Esc>" : "\<Esc>"]], { noremap = true, silent = true, expr = true})
utils.map("i", "<C-c>", [[pumvisible() ? "\<C-e><C-c>" : "\<C-c>"]], { noremap = true, silent = true, expr = true})
utils.map("i", "<BS>", [[pumvisible() ? "\<C-e><BS>"  : "\<BS>"]], { noremap = true, silent = true, expr = true})
utils.map("i", "<CR>", [[pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"]], { noremap = true, silent = true, expr = true})
utils.map('i', "<C-j>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { noremap = true, silent = true, expr = true})
utils.map('i', "<C-k>", [[pumvisible() ? "\<C-p>" : "\<C-j>"]], { noremap = true, silent = true, expr = true})
