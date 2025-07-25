return {
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.8',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin") -- Keybinds for finding files (using Telescope)
			vim.keymap.set("n", "ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "fg", builtin.live_grep, { desc = "Telescope live grep" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
