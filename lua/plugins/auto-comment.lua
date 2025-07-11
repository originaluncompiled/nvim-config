return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			-- Only use single-line comments
			mappings = { basic = true, extra = false, extended = false },
			opleader = { line = "<C-_>" },
			toggler = { line = "<C-_>" },
		})
	end,
}
