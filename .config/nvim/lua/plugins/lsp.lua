local util = require("lspconfig.util")
return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"prettier",
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
				arduino_language_server = {
					cmd = {
						"arduino-language-server",
						"-cli-config",
						"/home/amo/.arduino15/arduino-cli.yaml",
						"-fqbn",
						"esp32:esp32:esp32",
					},
					root_dir = function(fname)
						return util.root_pattern("*.ino")(fname)
					end,
				},
			},
			setup = {},
			inlay_hints = {
				enabled = false,
			},
		},
	},
}
