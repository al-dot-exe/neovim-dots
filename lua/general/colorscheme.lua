require("colorizer").setup()
local theme = require("themes.theme")
  
-- Set variant
-- Defaults to 'dawn' if vim background is light
-- @usage 'base' | 'moon' | 'dawn' | 'rose-pine[-moon][-dawn]'
vim.g.rose_pine_variant = "base"

-- -- Disable italics
vim.g.rose_pine_disable_italics = false

-- -- Use terminal background
vim.g.rose_pine_disable_background = false
--
-- -- Set colorscheme after options
local colorscheme = theme


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

vim.o.completeopt = "menuone,noselect"
