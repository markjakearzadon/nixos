require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Remap navigation commands to center view on cursor using zz
local opts = { noremap = true, silent = true }

-- Scroll up half a screen and center on the cursor
vim.api.nvim_set_keymap('n', '<C-U>', '11kzz', opts)

-- Scroll down half a screen and center on the cursor
vim.api.nvim_set_keymap('n', '<C-D>', '11jzz', opts)

-- Move down one line and center on the cursor
vim.api.nvim_set_keymap('n', 'j', 'jzz', opts)

-- Move up one line and center on the cursor
vim.api.nvim_set_keymap('n', 'k', 'kzz', opts)

-- Search backwards and center on the cursor
vim.api.nvim_set_keymap('n', '#', '#zz', opts)

-- Search forwards and center on the cursor
vim.api.nvim_set_keymap('n', '*', '*zz', opts)

-- Move to the next search match and center on the cursor
vim.api.nvim_set_keymap('n', 'n', 'nzz', opts)

-- Move to the previous search match and center on the cursor
vim.api.nvim_set_keymap('n', 'N', 'Nzz', opts)

