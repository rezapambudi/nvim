-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-e>", " :Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader><C-r>", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ev", ":Refactor extract_var", {})