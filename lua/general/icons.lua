local icons_status_ok, devicons = pcall(require, "nvim-web-devicons")
if not icons_status_ok then
	vim.notify("Icons are not displaying")
	return
end

devicons.setup({
	override = {
		default_icon = {
			icon = " ",
			color = "#6d8086",
			name = "Default",
		},
	},
})
