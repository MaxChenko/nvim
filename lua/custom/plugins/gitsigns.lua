vim.pack.add { 'https://github.com/lewis6991/gitsigns.nvim' }
require('gitsigns').setup {}

-- navigate
vim.keymap.set('n', ']c', '<cmd>Gitsigns nav_hunk next<cr>', { desc = 'Next git hunk' })
vim.keymap.set('n', '[c', '<cmd>Gitsigns nav_hunk prev<cr>', { desc = 'Previous git hunk' })

-- inspect
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>', { desc = '[G]it [P]review hunk' })
vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns blame_line<cr>', { desc = '[G]it [B]lame line' })
vim.keymap.set('n', '<leader>gD', '<cmd>Gitsigns diffthis<cr>', { desc = '[G]it [D]iff this file' })

-- stage / restore
vim.keymap.set('n', '<leader>gs', '<cmd>Gitsigns stage_hunk<cr>', { desc = '[G]it [S]tage hunk' })
vim.keymap.set('n', '<leader>gr', '<cmd>Gitsigns reset_hunk<cr>', { desc = '[G]it [R]eset hunk' })
vim.keymap.set('v', '<leader>gs', ':Gitsigns stage_hunk<cr>', { desc = '[G]it [S]tage selection' })
vim.keymap.set('v', '<leader>gr', ':Gitsigns reset_hunk<cr>', { desc = '[G]it [R]eset selection' })

-- toggles
vim.keymap.set('n', '<leader>gB', '<cmd>Gitsigns toggle_current_line_blame<cr>', { desc = '[G]it inline [B]lame toggle' })
