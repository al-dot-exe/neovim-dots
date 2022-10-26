local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Something went wrong with packer :(")
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- Default Plugins
  use("wbthomason/packer.nvim") -- Have packer manage itself
  use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
  use("nvim-lua/plenary.nvim") -- Useful lua functions used in lots of plugins

  -- My plugins here

  -- General Stuff From Vim-Script
  use("itchyny/lightline.vim") -- Status bar
  use("mhinz/vim-startify") -- vim start menu
  use("danro/rename.vim")
  use("tpope/vim-surround")
  use("vim-scripts/tComment") -- comment functionality
  use("Yggdroot/indentLine")
  -- use "RRethy/vim-illuminate"           -- Highlight hovered text

  -- Snippets
  use("hrsh7th/vim-vsnip") -- snippet support for html and css? not updating for some reason?
  use("hrsh7th/vim-vsnip-integ")
  use("L3MON4D3/Luasnip") -- Lua snippet engine
  use("rafamadriz/friendly-snippets") -- a bunch of snippets

  -- react snippets not required because we have luasnip

  -- Parsers!
  use({
    "nvim-treesitter/nvim-treesitter", -- sexy syntax highlighting
    run = "TSUpdate",
  })
  use("tree-sitter/tree-sitter-embedded-template") -- highlighting for ejs and erb hopefully

  use("nvim-treesitter/playground") -- element view for treesitter (was previously commented don't know why
  use("p00f/nvim-ts-rainbow") -- extra highlighting for scope differentiation
  -- use "tami5/lspsaga.nvim"   -- code intelligence and diagnostics (currently getting that with null ls)
  use("dense-analysis/ale") -- async Linting Engine

  -- LSP
  use("neovim/nvim-lspconfig") -- built in language servers
  use("williamboman/nvim-lsp-installer") -- LSP installer
  use("jose-elias-alvarez/null-ls.nvim") -- Provides lsp formatting
  use("aca/emmet-ls") -- Not working....

  -- Auto Completion Plugins
  -- use "hrsh7th/nvim-compe"              -- Gets theme to work
  use("hrsh7th/nvim-cmp") -- Auto-completion
  use("hrsh7th/cmp-buffer") -- Buffer completion
  use("hrsh7th/cmp-path") -- Path completion
  use("hrsh7th/cmp-cmdline") -- cmdline completion
  use("saadparwaiz1/cmp_luasnip") -- snippet completion for lua
  use("hrsh7th/cmp-nvim-lsp") -- Extra source completion
  use("windwp/nvim-autopairs") -- will auto complete lines testing for now ***

  -- TRYING OUT DIM!
  -- plugin isn't playing nice with null ls
  -- use("narutoxy/dim.lua")
  -- use "junegunn/limelight.vim" -- nice highlighting

  -- Exploration
  use("nvim-telescope/telescope.nvim") -- Fuzzy Finder for nvim
  use("nvim-telescope/telescope-file-browser.nvim") -- file explorer no working as expected
  use("nvim-telescope/telescope-media-files.nvim") --browse pictures only
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- Improve telescope sorting

  -- Web Development
  use({
    "turbio/bracey.vim", --Opens website preview on local machine
    "akinsho/toggleterm.nvim", --Opens a terminal in a floating window
    "NTBBloodbath/rest.nvim", -- REST client to test server not working right :/ ***
    "aspeddro/pandoc.nvim", -- needed for previewer
    "davidgranstrom/nvim-markdown-preview", -- markdown previewer
  })

  --Themes and Colors
  use("rose-pine/neovim")
  use("christianchiarulli/nvcode-color-schemes.vim")
  use("bluz71/vim-nightfly-guicolors")

  -- icing on the cake
  use("kyazdani42/nvim-web-devicons") -- Dev Icons

  -- config needed
  use("liuchengxu/vim-which-key")
  --use "junegunn/fzf", { 'do': { -> fzf#install() } }
  --use "junegunn/fzf.vim"
  use("norcalli/nvim-colorizer.lua") --instant colors!
  use("justinmk/vim-sneak") --go to nearest letter or word

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
