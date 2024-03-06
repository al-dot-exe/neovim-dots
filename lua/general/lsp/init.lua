local status_ok, lspconfig = pcall(require, "lspconfig")
local configs = require("lspconfig/configs")

if not status_ok then
	vim.notify("Language Servers Config not working!")
	return
end

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig to ensure nvim-dap-ui is used
require("dapui").setup()
require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})
require("general.lsp.mason")
require("general.lsp.handlers").setup()
require("general.lsp.null-ls")

