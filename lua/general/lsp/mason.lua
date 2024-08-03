local status_ok, mason = pcall(require, "mason")
if not status_ok then
	vim.notify("Mason package manager not working!")
	return
end

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

-- Bridge gaps with lsp config
local bridge_ok, mason_lsp_bridge = pcall(require, "mason-lspconfig")
if not bridge_ok then
	vim.notify("Mason/LSP bridge not working!")
	return
end

mason_lsp_bridge.setup()
