-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Load on an autocommand event
  -- use {'andymass/vim-matchup', event = 'VimEnter'}
  use { "onsails/lspkind-nvim", event = "VimEnter",  }

  -- theme gruvbox
  use { "ellisonleao/gruvbox.nvim" }

  -- language server protocol
  -- use { "williamboman/nvim-lsp-installer" }
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim"}
  use { "neovim/nvim-lspconfig" }

  use { 'hrsh7th/nvim-cmp' , config=[[require('lsp.cmp')]]}
  use {
    'hrsh7th/cmp-vsnip',
  	'hrsh7th/cmp-nvim-lsp',
  	'hrsh7th/cmp-cmdline',
  	'hrsh7th/cmp-buffer',
  	'hrsh7th/cmp-path',
  	after = 'nvim-cmp' }
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  -- 自动符号补全，成对出现
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup{} end
  }
  use {
    "nvim-telescope/telescope.nvim", tag = '0.1.0',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    }
  }

  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  }
end)
