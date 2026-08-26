vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		["_"] = { "trim_whitespace" },
		graphql = { "prettierd" },
		html = { "prettierd" },
		javascript = { "prettierd" },
		javascriptreact = { "prettierd" },
		json = { "prettierd" },
		lua = { "stylua" },
		markdown = { "prettierd" },
		python = { "pyink" },
		terraform = { "terraform_fmt" },
		["terraform-vars"] = { "terraform_fmt" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		yaml = { "prettierd" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
