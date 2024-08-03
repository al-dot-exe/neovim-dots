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
		"nvim-lua/plenary.nvim", -- Useful lua functions used in lots of plugins: the main dependency!
	})

	-- Vim-Script
	use({
		"mhinz/vim-startify", -- vim start menu
		"tpope/vim-surround", -- delimiters see docs for cmds https://github.com/tpope/vim-surround
		"vim-scripts/tComment", -- comment lines with gcc
		"justinmk/vim-sneak", --go to nearest letter or word https://github.com/justinmk/vim-sneak
	})

	-- Parsers!
	use({
		{ "nvim-treesitter/nvim-treesitter", run = "TSUpdate" }, -- sexy syntax highlighting
		"nvim-treesitter/playground", -- element view for treesitter
		"HiPhish/rainbow-delimiters.nvim", -- extra highlighting for scope differentiation
		-- NOT WELL MAINTAINED
		"dense-analysis/ale", -- async Linting Engine https://github.com/dense-analysis/ale for details
	})

	-- LSP
	use({
		"neovim/nvim-lspconfig", -- LSP conifgurations
		"williamboman/mason.nvim", -- Portable package manager for language support (provides lsp, lint, daps)
		"williamboman/mason-lspconfig.nvim", -- Bridge between mason and lsp config
		"hrsh7th/nvim-cmp", -- Auto-completion
		"hrsh7th/cmp-buffer", -- Buffer completion
		"hrsh7th/cmp-path", -- Path completion
		"hrsh7th/cmp-cmdline", -- cmdline completion
		"saadparwaiz1/cmp_luasnip", -- snippet completion for lua
		"hrsh7th/cmp-nvim-lsp", -- Extra source completion
		"windwp/nvim-autopairs", -- autopairing for neovim
		"stevearc/conform.nvim", -- code formatter https://github.com/stevearc/conform.nvim
	})

	-- Snippets (disabling most for now to see what I can get away with not having)
	use({
		"hrsh7th/vim-vsnip", -- snippet support for html and css
		"hrsh7th/vim-vsnip-integ",

		-- Lua snippets engine plus extra snippets (keep engine and friendly snippets for now)
		{
			"L3MON4D3/LuaSnip",
			dependencies = { "rafamadriz/friendly-snippets" },
		},
		"rafamadriz/friendly-snippets", -- a bunch of snippets
	})

	-- Debugging
	use({
		-- TRYING OUT TROUBLE MIGHT BE TRASH THOUGH
		"folke/trouble.nvim", -- diagnostics panel with telescope results https://github.com/folke/trouble.nvim
		{ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }, -- DAP
		"folke/lazydev.nvim", -- potential null-ls alternative faster LS setup in neovim
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
		"rest-nvim/rest.nvim", -- rest nvim has a new maintainer!
		"aspeddro/pandoc.nvim", -- needed for previewer
		"davidgranstrom/nvim-markdown-preview", -- markdown previewer
	})

	-- Code Testing (No file for this yet, research if this is needed)
	use({
		"andythigpen/nvim-coverage",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("coverage").setup()
		end,
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

	--Theming and Styling
	use({
		"nvim-lualine/lualine.nvim", -- status bar
		"christianchiarulli/nvcode-color-schemes.vim",
		"nvim-tree/nvim-web-devicons", -- Dev Icons (has changed ownerhip,
		"norcalli/nvim-colorizer.lua", --instant highlighting for color codes
		"lukas-reineke/indent-blankline.nvim", -- indent
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
