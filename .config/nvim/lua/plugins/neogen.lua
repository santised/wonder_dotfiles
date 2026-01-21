return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		-- Tell tree-sitter to use cpp parser for arduino files
		vim.treesitter.language.register("cpp", "arduino")

		-- Configure Neogen
		require("neogen").setup({
			enabled = true,
			languages = {
				["arduino"] = require("neogen.configurations.cpp"),
			},
		})
	end,
}
