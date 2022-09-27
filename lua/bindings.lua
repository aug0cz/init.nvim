local keymap = vim.keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


keymap.set('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', default_opts)
keymap.set('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', default_opts)
keymap.set('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', default_opts)
keymap.set('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', default_opts)


-- do not yank with x
keymap.set('n', 'x', '"_x', default_opts)


-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G', default_opts)


-- insert modes mapping
-- emacs-styles move
-- noremap! apply insert-mode & command-mode
keymap.set('!', '<C-a>', '<Home>', { noremap=true })
keymap.set('!', '<C-e>', '<End>', { noremap=true })
keymap.set('!', '<C-f>', '<Right>', { noremap=true })
keymap.set('!', '<C-b>', '<Left>', { noremap=true })
keymap.set('!', '<M-f>', '<S-Right>', { noremap=true })
keymap.set('!', '<M-b>', '<S-Left>', { noremap=true })
