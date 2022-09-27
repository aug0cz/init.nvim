-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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
  use { 
    'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' },
    config = [[require('config.nvim-tree')]]
  }
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
  use {
    "akinsho/toggleterm.nvim", tag = '*', config = function()
      require('toggleterm').setup()
    end
  }
  use {
    'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons' },
    event = "VimEnter", config = function()
      require("config.bufferline")
    end,
  }

  -- comment 注释功能
  use {
    'numToStr/Comment.nvim',
    config = [[require('Comment').setup()]]
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end)

