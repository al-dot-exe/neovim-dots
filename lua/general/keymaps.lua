--Some Custom Key mappings based on ChrisAtMachine

-- Variables and Allowing for changes
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<S-h>", ":tabp <cr>", opts)
keymap("n", "<S-l>", ":tabn <cr>", opts)

-- Navigate buffers
-- temporarily replacing buffer navigation for tab navigation for better funcitonality
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Formatting and Linting
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting_sync()<cr>", opts)

-- Telescope Explorer
keymap("n", "<leader>t", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
-- File Browser extension
keymap("n", "<leader>e", "<cmd>Telescope file_browser<cr> | <ESC>", opts)
-- keymap("n", "<leader>e", "<cmd>Telescope file_browser<ESC>", opts)
-- Telescope media file extension
keymap("n", "<leader>m", "<cmd>Telescope media_files<cr> | <ESC>", opts)

-- Resize with jrrows
keymap("n", "<A-Up", ":resize +2<CR>", opts)
keymap("n", "<c-Down", ":resize -2<CR>", opts)
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
