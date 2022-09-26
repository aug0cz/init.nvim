local keymap = vim.keymap

vim.opt.termguicolors = true

require('bufferline').setup({
  options = {
    numbers = "ordinal",
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 10,
    diagnostics = false,
    show_buffer_close_icons = true,
    sort_by = "id",
    always_show_bufferline = true,

    hover = {
      enable = true,
      delay = 200,
      reveal = {'close'}
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "文件管理器",
        highlight = "Directory",
        text_align = "left"
      }
    }
  }
})

local default_map_opts = {noremap = true, silent = true}

keymap.set('n', 'gb', '<cmd>BufferLinePick<cr>', default_map_opts)
keymap.set('n', 'gD', '<cmd>BufferLinePickClose<cr>', default_map_opts)
keymap.set('n', '<leader>1', function() require('bufferline').go_to_buffer(1, true) end, default_map_opts)
keymap.set('n', '<leader>2', function() require('bufferline').go_to_buffer(2, true) end, default_map_opts)
keymap.set('n', '<leader>3', function() require('bufferline').go_to_buffer(3, true) end, default_map_opts)
keymap.set('n', '<leader>4', function() require('bufferline').go_to_buffer(4, true) end, default_map_opts)
keymap.set('n', '<leader>5', function() require('bufferline').go_to_buffer(5, true) end, default_map_opts)
keymap.set('n', '<leader>6', function() require('bufferline').go_to_buffer(6, true) end, default_map_opts)
keymap.set('n', '<leader>7', function() require('bufferline').go_to_buffer(7, true) end, default_map_opts)
keymap.set('n', '<leader>8', function() require('bufferline').go_to_buffer(8, true) end, default_map_opts)
keymap.set('n', '<leader>9', function() require('bufferline').go_to_buffer(9, true) end, default_map_opts)
keymap.set('n', '<leader>$', function() require('bufferline').go_to_buffer(-1, true) end, default_map_opts)
