require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-S>", "<cmd> wa <cr>")
map({ "n", "i", "v" }, "<leader>rr", "<cmd> %s/\\r//g<cr>",{desc = "replace artifacts left from pasting"})
