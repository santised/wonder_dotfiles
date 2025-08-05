return {
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				background = "hard",
				transparent_background_level = 0,
				italics = true,
				disable_italic_comments = false,
				sign_column_background = "none",
				ui_contrast = "low",
				dim_inactive_windows = true,
				diagnostic_text_highlight = true,
				diagnostic_virtual_text = "coloured",
				spell_foreground = false,
			})
		end,
	},
	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nord").setup({})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
	},
	{
		"savq/melange-nvim",
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"loctvl842/monokai-pro.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "monokai-pro-machine",
		},
	},
}
