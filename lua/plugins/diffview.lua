return {
  "sindrets/diffview.nvim",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" }, -- 필수 의존성
  cmd = { "DiffviewOpen", "DiffviewFileHistory" }, -- lazy-loading 트리거 명령어
  config = function()
    require("diffview").setup({
      -- 여기에 원하는 설정을 추가할 수 있어요
    })
  end,
}
