-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Lang Server
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp_extensions.nvim'

  -- Syntax
  use {
	'nvim-treesitter/nvim-treesitter', 
	run = ':TSUpdate'
}

  -- Color
  use 'rebelot/kanagawa.nvim'

  -- Status Line	
  use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  -- Tabline
  use {
  	'romgrk/barbar.nvim',
  	requires = {'kyazdani42/nvim-web-devicons'}}
  -- Auto Pairs
  use {
	"windwp/nvim-autopairs",
	config = function() require("nvim-autopairs").setup {} end}
end)
