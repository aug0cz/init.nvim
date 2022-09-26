vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


require('nvim-tree').setup({
  sort_by = "case_sensitive"
})


local telescope = require("telescope")
local telescopeConfig = require('telescope.config')

local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--ignore")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!.git/*")

telescope.setup({
  defaults = {
    vimgrep_arguments = vimgrep_arguments,
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      -- find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*"},
    },
  },
})


require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",
    "bashls",
    "cssls",
    "cssmodules_ls",
    "eslint",
    "emmet_ls",
    "html",
    "jsonls",
    "tsserver",
    "pyright",
    "volar",
    -- "prettier" not lsp,  is formatter
  }
})

require('lualine').setup()

