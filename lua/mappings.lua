require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Hop 설정
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})
vim.keymap.set("n", ";w", ":HopWord<CR>", { desc = "Hop to a word" })
vim.keymap.set("n", ";e", ":HopPattern<CR>", { desc = "Hop to a word" })
vim.keymap.set("n", ";i", ":HopVertical<CR>", { desc = "Hop to a word" })

-- Insert 모드
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with 'jk'" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode with 'kj'" })
vim.keymap.set("i", ";;", "<Esc>$a;<Esc>o", { desc = "Insert semicolon at end of line and open new line" })

-- Normal 모드
vim.keymap.set("n", ";;", "$a;<Esc>o", { desc = "Append semicolon at end of line and open new line" })
vim.keymap.set("n", "vv", "ggvG$", { desc = "Select all lines" })
vim.keymap.set("n", "L", "$", { desc = "Move to end of line" })
vim.keymap.set("n", "H", "^", { desc = "Move to beginning of line" })
vim.keymap.set("n", "<Space>", "<Nop>", { desc = "Unmap space for leader key" })
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "Delete without yanking" })
vim.keymap.set("n", "<leader>p", "\"_dP", { desc = "Paste without overwriting register" })

vim.keymap.set("n", ";d", "viwd", { desc = "Delete word" })
vim.keymap.set("n", ";c", "yiw", { desc = "Copy word" })
vim.keymap.set("n", ";v", "yiwpyiw", { desc = "Paste word" })

-- Visual 모드
vim.keymap.set("x", "<leader>d", "\"_d", { desc = "Delete without yanking (visual)" })
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without overwriting register (visual)" })

-- Leader 키 설정
vim.g.mapleader = " "
