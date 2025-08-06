require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n", "va", "gg^vG$", { noremap = true, silent = true })
map("n", "L", "$", { noremap = true, silent = true })
map("n", "H", "^", { noremap = true, silent = true })
map("v", "L", "$", { noremap = true, silent = true })
map("v", "H", "^", { noremap = true, silent = true })

map("i", "jk", "<esc>", { noremap = true, silent = true })
map("i", "kj", "<esc>", { noremap = true, silent = true })

map("n", ";n", ":bn<cr>", { noremap = true, silent = true })
map("n", ";p", ":bp<cr>", { noremap = true, silent = true })
map("n", ";x", ":bd<cr>", { noremap = true, silent = true })

map("n", ";h", "<C-w>h", { noremap = true, silent = true })
map("n", ";j", "<C-w>j", { noremap = true, silent = true })
map("n", ";k", "<C-w>k", { noremap = true, silent = true })
map("n", ";l", "<C-w>l", { noremap = true, silent = true })

-- map("n", ";", ";", { noremap = true, silent = true })
-- map("n", ",", ",", { noremap = true, silent = true })

map("n", ";c", "yiw", { noremap = true, silent = true })
map("n", ";v", '"_diw"0P', { noremap = true, silent = true })
map("v", ">", ">gv", { desc = "들여쓰기 후 선택 유지" })
map("v", "<", "<gv", { desc = "내어쓰기 후 선택 유지" })

map("n", "<leader>aA", ":AvanteChat<CR>", { desc = "avante: chat" })
map("n", "<leader>aN", ":AvanteChatNew<CR>", { desc = "avante: create new chat" })
-- map("n", ";w", "<cmd>HopWord<cr>", { noremap = true, silent = true })
map("n", ";bb", ":BookmarksMark<CR>", { desc = "Bookmark"})
map("n", ";bd", ":BookmarksDesc<CR>", { desc = "Bookmark Desc"})
map("n", ";bs", ":BookmarksGoto<CR>", { desc = "Bookmark Goto"})
map("n", ";bt", ":BookmarksTree<CR>", { desc = "Bookmark Tree"})
map("n", ";bn", ":BookmarksNewList<CR>", { desc = "Bookmark NewList"})
map("n", ";bl", ":BookmarksLists<CR>", { desc = "Bookmark List"})
map("n", ";bc", ":BookmarksCommands<CR>", { desc = "Bookmark Commands"})
