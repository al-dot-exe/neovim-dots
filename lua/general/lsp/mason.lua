--- !!! PIN HERE Shouldn't have to call lspconfig again
local lspconfig = require("lspconfig")

local status_ok, mason = pcall(require, "mason")
if not status_ok then
	vim.notify("Mason package manager not working!")
	return
end


-- setup handlers on attach
on_attach_with_handlers = require("general.lsp.handlers").on_attach
capabilities = require("general.lsp.handlers").capabilities

-- Setup icons in mason
mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

local bridge_ok, mason_lsp_bridge = pcall(require, "mason-lspconfig")
if not bridge_ok then
	vim.notify("Mason/LSP bridge not working!")
	return
end
mason_lsp_bridge.setup()

-- TODO: Mason config is not working
-- local config_status_ok, mason_config = pcall(require, "general.lsp.Settings.mason-config")
-- if not config_status_ok then
-- 	vim.notify("Mason config not working!")
-- 	return
-- end

-- JSON
local jsonls_opts_status_ok, jsonls_opts = pcall(require, "general.lsp.Settings.jsonls")
if not jsonls_opts_status_ok then
	vim.notify("JSON ls config not working!")
	return
end
lspconfig["jsonls"].setup({
	server = {
		on_attach = on_attach_with_handlers,
		settings = {
			capabilities = capabilities,
			opts = jsonls_opts,
		},
	},
})

-- Pyright
local pyright_opts_status_ok, pyright_opts = pcall(require, "general.lsp.Settings.pyright")
if not pyright_opts_status_ok then
	vim.notify("Pyright config not working!")
	return
end

lspconfig["pyright"].setup({
	server = {
		on_attach = on_attach_with_handlers,
		settings = {
			capabilities = capabilities,
			opts = pyright_opts,
		},
	},
})
