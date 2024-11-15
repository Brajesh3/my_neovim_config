require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local code_runner = require("configs.code_runner")

-- Map <leader>cr to run code based on file type
vim.keymap.set("n", "<leader>cr", code_runner, { desc = "Code Runner", noremap = true, silent = true })
