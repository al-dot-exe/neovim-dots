--Some Custom Key mappings based on ChrisAtMachine

-- Variables and Allowing for changes
local opts = { noremap = true, silent = true }
local nopts = { noremap = false, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<S-h>", ":tabp <cr>", opts)
keymap("n", "<S-l>", ":tabn <cr>", opts)

--Opens Mason package manager
keymap("n", "<c-i>", "<cmd>Mason<cr>", opts)

-- Formatting and Linting
-- format is deprecated in favor of the conform plugin https://github.com/stevearc/conform.nvim
-- keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({ timeout_ms = 2000 })<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require('conform').format()<cr>", opts)
keymap("n", "<leader>s", "<cmd>ALEFixSuggest<cr>", opts)
keymap("n", "<leader>a", "<cmd>ALEDetail<cr>", opts)

-- Telescope Explorer
keymap("n", "<leader>t", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

-- File Explorer extension
keymap("n", "<leader>e", "<cmd>Telescope file_browser<cr><esc>", opts)

-- Telescope media file extension
keymap("n", "<leader>m", "<cmd>Telescope media_files<cr><esc>", opts)

-- Resize with jrrows
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<a-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<A-Up", ":vertical resize -2<CR>", opts)
-- keymap("n", "<A-Right", ":vertical resize +2<CR>", opts)

-- Return to normal mode from other modes mode
keymap("i", "[e", "<ESC>", opts)
keymap("v", "[e", "<ESC>", opts)

-- Persistent clipboard after visual mode paste
keymap("v", "p", '"_dP', opts)

-- Web development ---
-- html previewing
keymap("n", "<leader>b", ":Bracey <cr>", opts)
keymap("n", "<leader>r", ":BraceyReload <cr>", opts)

-- markdown previewing
keymap("n", "<leader>p", "<cmd>MarkdownPreview<cr>", opts)

-- REST client for testing
keymap("n", "<a-c>", "<Plug>RestNvim <cr>", nopts)
keymap("n", "<a-v>", "<Plug>RestNvimPreview", nopts)
keymap("n", "<a-r>", "<Plug>RestNvimLast", nopts)
