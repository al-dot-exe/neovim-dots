require("colorizer").setup()

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
-- vim.cmd "colorscheme rose-pine-plus"


-- change the colorscheme by distro
-- local get_distro = io.popen("lsb_release -i")
-- local distro = get_distro:read("*a")

local colorscheme
colorscheme = "rose-pine-plus"

-- if string.find(distro, "Arch") then
--   colorscheme = "rose-pine-plus"
-- else
--   colorscheme = "qubes"
-- end

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
