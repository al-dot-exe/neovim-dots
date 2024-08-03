local html_opts = {}

local html_configs = {
	init_options = {
		configurationSection = { "html", "css", "javascript", "typescript" },
		embeddedLanguages = {
			css = true,
			javascript = true,
			typescript = true,
		},
		provideFormatter = true,
	},
	settings = html_opts,
}

return html_configs
