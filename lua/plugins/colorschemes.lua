return {
	-- {
	-- 	"savq/melange-nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("melange")
	-- 	end,
	-- },
	{
		"AlexvZyl/nordic.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("nordic")

			vim.cmd([[ highlight EndOfBuffer guifg=#5c95c5 ]]) -- Changes the "~" on unwritten lines to be visible
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#5c95c5" })
			vim.api.nvim_set_hl(0, "Visual", { bg = "#4c5062" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "#191d24", fg = "#8e95a4" })
		end,
	},
	-- {
	-- 	"vague2k/vague.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("vague").setup({
	-- 			colors = {
	-- 				bg = "#242933",
	-- 			},
	-- 		})
	-- 		vim.cmd.colorscheme("vague")
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("rose-pine-moon")
	-- 	end,
	-- },
}
