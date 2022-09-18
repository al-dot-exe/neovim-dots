-- :help options in Lua

local options = {
  completeopt = { "menuone", "noselect" }, -- for cmp
  fileencoding = "utf-8", -- file encoding
  shiftwidth = 3, -- default indenation
  tabstop = 3, -- 2 spaces for a tab
  softtabstop = 3, -- similar to above
  expandtab = true, -- expands tabs
  autoindent = true, -- Keep indentation from previous line
  smartcase = true, -- makes smarter case if need be
  smartindent = true, -- indents when needed
  cindent = true, -- a stricter smart indent
  ignorecase = true, -- case agnostic in search
  hlsearch = true, -- highlight search matches
  mouse = "a", -- use mouse in nvim
  termguicolors = true, -- use gui colors
  updatetime = 300, -- faster update time
  wrap = true, -- wrap lines across page
  scrolloff = 12,
  sidescrolloff = 8,
  pumheight = 10,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- OG Commands
vim.cmd("set nocompatible")
vim.cmd("set colorcolumn=110")
vim.cmd("set nu")
vim.cmd("set autoread")
vim.cmd("set is")
-- vim.cmd "set t_Co=256"
vim.cmd([[set iskeyword+=-]])
