return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()

		local masonLspConfig = require("mason-lspconfig")

		masonLspConfig.setup({
			ensure_installed = { "eslint", "ts_ls" },
			automatic_installation = true,
		})
	end,
}
