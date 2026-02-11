-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<F1>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<F2>", ":lua require('neogen').generate()<CR>", opts)
