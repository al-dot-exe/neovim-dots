-- then setup your lsp server as usual
-- local status_lazydev_ok, lazydev = require("lazydev")
--
-- if not status_lazydev_ok then
-- 	vim.notify("Lazy dev LSP setup not working!")
-- 	return
-- end

require("lazydev").setup({
	library = { plugins = { "nvim-dap-ui" }, types = true },
})
