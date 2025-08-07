return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup()
    end,
    lazy = false,  -- 항상 활성화 (원하면 true로 바꾸면 됨)
  },
}
