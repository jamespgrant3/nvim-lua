vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
})

require("blink.cmp").setup({
	keymap = { preset = "super-tab" },
	completion = {
		documentation = { auto_show = true },
	},
	sources = {
		default = { "lsp", "path", "buffer" },
	},
	signature = { enabled = true },
})

vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})
