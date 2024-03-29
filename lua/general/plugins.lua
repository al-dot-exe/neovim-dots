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

return packer.startup(function(use)
	-- PACKER plugins
	use({
		"wbthomason/packer.nvim", -- Have packer manage itself
		"nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
		"nvim-lua/plenary.nvim", -- Useful lua functions used in lots of plugins
	})

	-- Vim-Script
	use({
		"itchyny/lightline.vim", -- Status bar
		"mhinz/vim-startify", -- vim start menu
		"tpope/vim-surround",
		"vim-scripts/tComment", -- comment functionality
		"Yggdroot/indentLine", -- indent functionality
		"liuchengxu/vim-which-key", -- command lookup
		"justinmk/vim-sneak", --go to nearest letter or word
	})

	-- Snippets
	use({
		"hrsh7th/vim-vsnip", -- snippet support for html and css?
		"hrsh7th/vim-vsnip-integ",
		"L3MON4D3/Luasnip", -- Lua snippet engine
		"rafamadriz/friendly-snippets", -- a bunch of snippets
	})

	-- Parsers!
	use({
		{ "nvim-treesitter/nvim-treesitter", run = "TSUpdate" }, -- sexy syntax highlighting
		"tree-sitter/tree-sitter-embedded-template", -- highlighting for ejs and erb hopefully
		"nvim-treesitter/playground", -- element view for treesitter
		"p00f/nvim-ts-rainbow", -- extra highlighting for scope differentiation
		"dense-analysis/ale", -- async Linting Engine
	})

	-- Language Server Provider (LSP)
	use({
		"neovim/nvim-lspconfig", -- built in language servers
		"williamboman/mason.nvim", -- Portable package manager for lanaguage details (lsp, lint, daps,
		"williamboman/mason-lspconfig.nvim", -- Bridge between mason and lsp config
		"jose-elias-alvarez/null-ls.nvim", -- Provides lsp formatting and linting
	})

	-- Debugger Protocol
	use({
		{ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
		"folke/neodev.nvim", -- enables typechecking for dap-ui debugger
	})

	-- Auto Completion Plugins
	use({
		"hrsh7th/nvim-cmp", -- Auto-completion
		"hrsh7th/cmp-buffer", -- Buffer completion
		"hrsh7th/cmp-path", -- Path completion
		"hrsh7th/cmp-cmdline", -- cmdline completion
		"saadparwaiz1/cmp_luasnip", -- snippet completion for lua
		"hrsh7th/cmp-nvim-lsp", -- Extra source completion
		"windwp/nvim-autopairs", -- will auto complete lines testing for now ***
	})

	-- File Navigation
	use({
		"nvim-telescope/telescope.nvim", -- Fuzzy Finder for nvim
		"nvim-telescope/telescope-file-browser.nvim", -- file explorer no working as expected
		"nvim-telescope/telescope-media-files.nvim", --browse pictures only
		{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }, -- Improve telescope sorting
	})

	-- Web Development
	use({
		"turbio/bracey.vim", --Opens frontend preview on local machine
		"NTBBloodbath/rest.nvim", -- REST client to test server not working right :/ pretty sure its working actually
		"aspeddro/pandoc.nvim", -- needed for previewer
		"davidgranstrom/nvim-markdown-preview", -- markdown previewer
	})

	-- Terminal Support
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- Git merge conflict support
	use({
		"akinsho/git-conflict.nvim",
		tag = "*",
		config = function()
			require("git-conflict").setup()
		end,
	})

	--Theming
	use({
		"rose-pine/neovim",
		"christianchiarulli/nvcode-color-schemes.vim",
		"bluz71/vim-nightfly-guicolors",
		"nvim-tree/nvim-web-devicons", -- Dev Icons (has changed ownerhip,
		"norcalli/nvim-colorizer.lua", --instant colors!
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
