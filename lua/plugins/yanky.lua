vim.pack.add({ "https://github.com/gbprod/yanky.nvim" })

require("yanky").setup({
	highlight = {
		on_put = true,
		on_yank = true,
		timer = 250,
	},
})
