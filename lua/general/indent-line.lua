local theme = require("themes.theme")
local status_ok, indent_line = pcall(require, "ibl")

if not status_ok then
  vim.notify('Indent line not loading properly, indentation might break')
  return
end

local hl = theme.IndentHighlights
local highlight = {
    "Indent1",
    "Indent2",
    "Indent3",
    "Indent4",
    "Indent5",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "Indent1", { fg = hl.Indent1})
    vim.api.nvim_set_hl(0, "Indent2", { fg = hl.Indent2})
    vim.api.nvim_set_hl(0, "Indent3", { fg = hl.Indent3})
    vim.api.nvim_set_hl(0, "Indent4", { fg = hl.Indent4})
    vim.api.nvim_set_hl(0, "Indent5", { fg = hl.Indent5})
end)

indent_line.setup { indent = { highlight = highlight } }
