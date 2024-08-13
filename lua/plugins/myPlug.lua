return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
    lazy = false,
  },
  {
    "echasnovski/mini.move",
    enabled = false,
  },
  {
    "github/copilot.vim",
    event = "VeryLazy",
  },
  {
    "tpope/vim-surround",
    event = "VeryLazy",
  },
  {
    "tpope/vim-repeat",
    event = "VeryLazy",
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    keys = {
      { "<leader>cn", "<cmd>CodeSnap cpp<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
      { "<leader>cs", "<cmd>CodeSnapSave cpp<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
    },
    opts = {
      save_path = "~/Pictures/Codesnap/",
      code_font_family = "FiraCode Nerd Font",
      mac_window_bar = false,
      has_breadcrumbs = true,
      has_line_number = true,
      bg_x_padding = 1,
      bg_y_padding = 1,
      bg_padding = nil,
      bg_color = "#2E383C",
      watermark = "",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "c",
        "cpp",
        "arduino",
        "python",
        "rust",
        "zig",
        "lua",
        "bash",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "ltex-ls",
        "pyright",
        "ruff",
        "mypy",
        "black",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        pyright = {},
      },
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
  {
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        cpp = { "clang-format" },
      },
    }),
  },
  {
    "echasnovki/mini.pairs",
    enabled = false,
  },
}
