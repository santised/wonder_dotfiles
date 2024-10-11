return {
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
        "arduino-language-server",
        "java-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        pyright = {},
        arduino_language_server = {},
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
}
