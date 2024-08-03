-- LSP configs https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local status_ok, lspconfig = pcall(require, "lspconfig") -- lsp
-- local configs = require("lspconfig/configs")
if not status_ok then
	vim.notify("Language Servers Config not working!")
	return
end
local lsp_defaults = lspconfig.util.default_config

require("general.lsp.mason") -- package manager
require("dapui").setup({}) -- debugger
require("general.lsp.conform") -- formatter

local status_handlers, handlers = pcall(require, "general.lsp.handlers") -- filetype handlers/tools
if not status_handlers then
	vim.notify("Language handlers config not working!")
	return
end

handlers.setup()
lsp_defaults.on_attach = handlers.on_attach
lsp_defaults.capabilities = handlers.capabilities

-- *** LSP configs *** --

-- Lua
local lua_ls_configs_ok, lua_ls_configs = pcall(require, "general.lsp.Settings.lua_ls")
if not lua_ls_configs_ok then
	vim.notify("Could not load lua_ls configs!")
	return
end
lspconfig["lua_ls"].setup({
	settings = lua_ls_configs,
})

-- Python
local pyright_configs_ok, pyright_configs = pcall(require, "general.lsp.Settings.pyright")
if not pyright_configs_ok then
	vim.notify("Could not load Pyright configs!")
	return
end
lspconfig["pyright"].setup({
	settings = pyright_configs,
})

-- HTML
local html_configs_ok, html_configs = pcall(require, "general.lsp.Settings.html")
if not html_configs_ok then
	vim.notify("Could not load HTML configs!")
	return
end
lspconfig["html"].setup(html_configs)

-- CSS
local cssls_configs_ok, cssls_configs = pcall(require, "general.lsp.Settings.cssls")
if not cssls_configs_ok then
	vim.notify("Could not load cssls configs!")
	return
end
lspconfig["cssls"].setup({
	root_dir = lspconfig.util.root_pattern("package.json", ".git"),
	settings = cssls_configs,
})

-- Typescript/Javascript
lspconfig.tsserver.setup({
	root_dir = lspconfig.util.root_pattern(".git")(),
})

-- Markdown
lspconfig.marksman.setup({})

-- JSON
local jsonls_configs_ok, jsonls_configs = pcall(require, "general.lsp.Settings.jsonls")
if not jsonls_configs_ok then
	vim.notify("Could not load JSON ls configs!")
	return
end
lspconfig["jsonls"].setup(jsonls_configs.settings)

-- YAML
lspconfig["yamlls"].setup({
	filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab", "yaml.onedev-buildspec" },
})

-- Docker/Docker compose
lspconfig.dockerls.setup({})
lspconfig.docker_compose_language_service.setup({
	root_dir = lspconfig.util.root_pattern(
		"docker-compose.yaml",
		"docker-compose.yml",
		"compose.yaml",
		"compose.yml",
		"docker-compose.dev.yml",
		"docker-compose.dev.yaml"
	),
})
