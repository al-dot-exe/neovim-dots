-- INITIAL LUA DIRECTORY

-- general requirements
require "general.plugins"
require "general.treesitter"
require "general.lsp"
require "general.cmp"
require "general.options"
require "general.keymaps"
require "general.telescope"
require "general.toggleterm"
require "general.luasnip"
require "general.rest"
require "general.templatelangs"
-- require "general.dim" -- not playing nice with null ls


-- Extra vim scripts with no lua alternatives
vim.cmd "source ~/.config/nvim/lua/vim-scripts/indentLine.vim"
-- vim.cmd "source ~/.config/nvim/lua/vim-scripts/nerdtree.vim"

-- Color Scheme
require "general.colorscheme"
require "general.icons"
