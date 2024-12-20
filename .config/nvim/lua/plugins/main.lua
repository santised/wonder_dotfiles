return {
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
    "OXY2DEV/markview.nvim",
    lazy = false, -- Recommended
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    -- Install markdown preview, use npx if available.
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function(plugin)
      if vim.fn.executable("npx") then
        vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
      else
        vim.cmd([[Lazy load markdown-preview.nvim]])
        vim.fn["mkdp#util#install"]()
      end
    end,
    init = function()
      if vim.fn.executable("npx") then
        vim.g.mkdp_filetypes = { "markdown" }
      end
    end,
  },
}
