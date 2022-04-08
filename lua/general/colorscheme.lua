require 'colorizer'.setup()

-- Set variant
-- Defaults to 'dawn' if vim background is light
-- @usage 'base' | 'moon' | 'dawn' | 'rose-pine[-moon][-dawn]'
vim.g.rose_pine_variant = 'base'

-- -- Disable italics
vim.g.rose_pine_disable_italics = false

-- -- Use terminal background
vim.g.rose_pine_disable_background = false
--
-- -- Set colorscheme after options
-- -- vim.cmd "colorscheme rose-pine-plus"

-- function file_exists(name)
--
--   if f~=nil then io.close(f) return true else return false end
-- end


-- change the file path in os.execute() acording to your file system
local device = os.execute("test -f ~/.config/nvim/base.txt || echo $?")

local colorscheme
if device == 0
then
  colorscheme = "qubes"
else
   colorscheme = "rose-pine-plus"
end

-- Other color schemes
  -- nightfly'
  -- rose-pine'
  -- nord'
  -- dracula'
  -- gruvbox'
  -- metanoia'
  -- nvcode'
  -- palenight'
  -- snazzy'
  -- xoria'
  -- aurora'
-- CUSTOM COLORS
  -- rose-pine-plus
  -- qubes

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

vim.o.completeopt = "menuone,noselect"

