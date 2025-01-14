return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 30,  -- 탐색기 너비
        side = "left",  -- 탐색기 위치
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      renderer = {
        highlight_git = true,  -- Git 상태 강조
        icons = {
          show = {
            folder_arrow = true,
            git = true,
          },
        },
      },
      git = {
        enable = true,  -- Git 연동 활성화
      },
    },
    lazy = false, -- 플러그인 항상 로드
    priority = 1000, -- 높은 우선순위로 로드
    config = function(_, opts)
      require("nvim-tree").setup(opts)

      -- Neovim 시작 시 nvim-tree 열기
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function(data)
          -- 디렉토리를 열었는지 확인
          local directory = vim.fn.isdirectory(data.file) == 1
          if directory then
            -- 디렉토리를 작업 디렉토리로 설정
            vim.cmd.cd(data.file)
            -- nvim-tree 열기
            require("nvim-tree.api").tree.open()
          end
        end,
      })
    end,
  }

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
