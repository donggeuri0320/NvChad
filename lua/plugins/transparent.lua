return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "StatusLine",
        "EndOfBuffer",
        "LSPInfoBorder",
        "TelescopeBorder",
      },
      exclude_groups = {
      }, -- 제외할 그룹이 있다면 여기에
    })
    vim.cmd("TransparentEnable")
  end,
}
