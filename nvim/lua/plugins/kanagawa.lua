return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		config = function()
			require("kanagawa").setup({
				background = {
					dark = "dragon"
				}
			})
			vim.cmd([[colorscheme kanagawa]])
		end
	}
}

