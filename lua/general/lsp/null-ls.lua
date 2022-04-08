local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	vim.notify("Null Ls formatting not working!")
	return
end

-- formatting variable
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = true,
	sources = {
		formatting.prettier,
		formatting.stylua,
		formatting.black,
		-- diagnostics.eslint,
		-- diagnostics.flake8,
	},
})
