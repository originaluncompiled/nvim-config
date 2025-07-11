return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"williamboman/mason.nvim",
		"nvim-neotest/nvim-nio",
		{
			"jay-babu/mason-nvim-dap.nvim",
			opts = {
				ensure_installed = { "codelldb", "js-debug-adapter" },
				automatic_setup = true,
			},
		},
	},
	config = function()
		require("mason").setup()
		require("mason-nvim-dap").setup({ -- ← now mason-nvim-dap can drive mason
			ensure_installed = { "codelldb", "js-debug-adapter" },
			automatic_setup = true,
		})

		local dap = require("dap")

		vim.keymap.set("n", "<leader>bt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<leader>bc", dap.continue, {})

		local dapui = require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- dap.configurations.typescriptreact = {
		-- 	{
		-- 		name = "Launch Web React",
		-- 		type = "pwa-chrome",
		-- 		request = "launch",
		-- 		url = "http://localhost:3000",
		-- 		webRoot = "${workspaceFolder}/src",
		-- 		sourceMaps = true,
		-- 	},
		-- }
		--
		-- dap.configurations.javascriptreact = {
		-- 	{
		-- 		name = "Attach React Native",
		-- 		type = "pwa-node",
		-- 		request = "attach",
		-- 		program = "${workspaceFolder}/node_modules/react-native/local-cli/cli.js",
		-- 		args = { "start" },
		-- 		cwd = "${workspaceFolder}",
		-- 		port = 8081,
		-- 		sourceMaps = true,
		-- 		protocol = "inspector",
		-- 		restart = true,
		-- 	},
		-- }
		--
		-- dap.configurations.rust = {
		-- 	{
		-- 		name = "Debug Rust",
		-- 		type = "codelldb",
		-- 		request = "launch",
		-- 		program = function()
		-- 			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
		-- 		end,
		-- 		cwd = "${workspaceFolder}",
		-- 		stopOnEntry = false,
		-- 		args = {},
		-- 	},
		-- }
	end,
}
