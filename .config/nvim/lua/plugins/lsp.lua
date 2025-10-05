return {
	{
		"mason-org/mason.nvim",
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
				clangd = {
					settings = {
						codeLens = {
							enable = true,
						},
					},
				},
				pyright = {},
				rust_analyzer = {},
				arduino_language_server = {},
			},
			setup = {},
			inlay_hints = {
				enabled = false,
			},
		},
	},
}
