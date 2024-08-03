local lua_configs = {
	Lua = {
		diagnostics = {
			globals = { "vim", "nvim" },
		},
		worspace = {
			library = {
				[vim.fn.expand("$VIMRUNTIME/lua")] = true,
				[vim.fn.stdpath("config") .. "/lua"] = true,
			},
		},
	},
}

return lua_configs
