local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
	-- not loaded
	return
end

require("luasnip").filetype_extend("javascript", { "javascriptreact" })
