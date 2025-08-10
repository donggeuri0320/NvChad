return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>fs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>fS", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" }, -- yr 을 누르고 검색을 한 다음에 iw 를 누르면 단어가 복사 되고 되돌아 온다. dr, cr 등도 사용 가능
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" }, -- yR 을 누르면 범위 지정이 되고 되돌아 온다.
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" }, -- / 검색 후 c-s 누르면 뒤에 알파벳 생김. 또는 그냥 ? 으로 검색하면 됨.
  },
}
