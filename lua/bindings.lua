local keymap = vim.keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


keymap.set('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', default_opts)
keymap.set('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', default_opts)
keymap.set('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', default_opts)
keymap.set('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', default_opts)
