-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local nmap = function(key, effect)
  vim.keymap.set("n", key, effect, { silent = true, noremap = true })
end

local imap = function(key, effect)
  vim.keymap.set("i", key, effect, { silent = true, noremap = true })
end

vim.keymap.set({ "n", "i", "v" }, "<C-b>", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neotree", remap = true })
vim.keymap.set("t", "<S-Space>", "<Space>")
-- vim.keymap.set({ "n", "i", "v" }, "<C-CR>", "<ESC>/# %%<CR>NVnk<cmd>MagmaEvaluateVisual<CR>n")

nmap("<c-cr>", "<Plug>SlimeSendCell")
nmap("<s-cr>", "<Plug>SlimeSendCell")
imap("<c-cr>", "<esc><Plug>SlimeSendCell<cr>i")
imap("<s-cr>", "<esc><Plug>SlimeSendCell<cr>i")
-- <cmd>MagmaEvaluateVisual<CR>")
