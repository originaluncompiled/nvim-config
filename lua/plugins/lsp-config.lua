return {
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			ensure_installed = {
				"rust_analyzer",
				"ts_ls",
				"eslint",
				"pylsp",
				"lua_ls",
				"html",
				"cssls",
				"tailwindcss",
				"jsonls",
				"solang",
			},
			auto_install = true,
		},
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.tailwindcss.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.solang.setup({ capabilities = capabilities })
			-- Keymaps
			vim.keymap.set("n", "<K>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<C-Space>", vim.lsp.buf.code_action, {})
		end,
	},
}
