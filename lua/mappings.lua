require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- map("n", "va", "gg^vG$", { noremap = true, silent = true })
map("n", "L", "$", { noremap = true, silent = true })
map("n", "H", "^", { noremap = true, silent = true })
map("v", "L", "$", { noremap = true, silent = true })
map("v", "H", "^", { noremap = true, silent = true })

map("i", "jk", "<esc>", { noremap = true, silent = true })
map("i", "kj", "<esc>", { noremap = true, silent = true })

-- map("n", ";n", ":bn<cr>", { noremap = true, silent = true })
-- map("n", ";p", ":bp<cr>", { noremap = true, silent = true })
-- map("n", ";x", ":bd<cr>", { noremap = true, silent = true })

-- map("n", ";h", "<C-w>h", { noremap = true, silent = true })
-- map("n", ";j", "<C-w>j", { noremap = true, silent = true })
-- map("n", ";k", "<C-w>k", { noremap = true, silent = true })
-- map("n", ";l", "<C-w>l", { noremap = true, silent = true })

-- map("n", ";", ";", { noremap = true, silent = true })
-- map("n", ",", ",", { noremap = true, silent = true })

-- map("n", ";c", "yiw", { noremap = true, silent = true })
-- map("n", ";v", '"_diw"0P', { noremap = true, silent = true })
map("v", ">", ">gv", { desc = "들여쓰기 후 선택 유지" })
map("v", "<", "<gv", { desc = "내어쓰기 후 선택 유지" })

map("n", "<leader>aA", ":AvanteChat<CR>", { desc = "avante: chat" })
map("n", "<leader>aN", ":AvanteChatNew<CR>", { desc = "avante: create new chat" })
-- map("n", ";w", "<cmd>HopWord<cr>", { noremap = true, silent = true })
map("n", "<leader>bb", ":BookmarksMark<CR>", { desc = "Bookmark"})
map("n", "<leader>bd", ":BookmarksDesc<CR>", { desc = "Bookmark Desc"})
map("n", "<leader>bs", ":BookmarksGoto<CR>", { desc = "Bookmark Goto"})
map("n", "<leader>bt", ":BookmarksTree<CR>", { desc = "Bookmark Tree"})
map("n", "<leader>bn", ":BookmarksNewList<CR>", { desc = "Bookmark NewList"})
map("n", "<leader>bl", ":BookmarksLists<CR>", { desc = "Bookmark List"})
map("n", "<leader>bc", ":BookmarksCommands<CR>", { desc = "Bookmark Commands"})
-- 예시: <leader>b (space + b)를 비활성화 ( 버퍼 생성 )
map("n", "<leader>b", "<Nop>", { noremap = true, silent = true })
map("n", "<leader>be", ":enew<CR>", { desc = "New Buffer" })
map('n', '<leader>X', function()
  local current = vim.api.nvim_get_current_buf()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    -- 현재 버퍼가 아니고, 로드된 버퍼일 경우
    if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
      -- 버퍼가 수정되었으면 먼저 저장
      if vim.api.nvim_buf_get_option(buf, 'modified') then
        vim.api.nvim_buf_call(buf, function()
          vim.cmd('write')
        end)
      end
      -- 버퍼 삭제
      vim.api.nvim_buf_delete(buf, {})
    end
  end
end, { desc = "Close other buffers and save before closing" })

map("n", "s", require('substitute').operator, { noremap = true })
map("n", "ss", require('substitute').line, { noremap = true })
map("n", "S", require('substitute').eol, { noremap = true })
map("x", "s", require('substitute').visual, { noremap = true })
map("n", "sx", require("substitute.exchange").operator, { noremap = true })
map("n", "sxx", require("substitute.exchange").line, { noremap = true }) -- 한 줄 교환
map("x", "X", require("substitute.exchange").visual, { noremap = true })
map("n", "sxc", require("substitute.exchange").cancel, { noremap = true })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

