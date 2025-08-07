require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.number = true -- 모든 라인에 절대 번호 켜기
vim.opt.relativenumber = true -- 상대 라인 넘버도 켜기
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true         -- 파일 열 때 폴드 자동 적용
vim.opt.foldlevel = 99            -- 대부분의 폴드를 기본으로 펼쳐둠
