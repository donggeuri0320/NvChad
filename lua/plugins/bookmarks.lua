return {
    'crusj/bookmarks.nvim',
    lazy = false, -- 수동 로딩: 항상 로딩됨.
    keys = {
        { "<tab><tab>", mode = { "n" } },
    },
    branch = 'main',
    dependencies = { 'nvim-web-devicons' },
    config = function()
        require("bookmarks").setup()
        require("telescope").load_extension("bookmarks")
    end
}

