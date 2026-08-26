local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>mv", "<cmd>Markview splitToggle<cr>", opts)

vim.pack.add({
	"https://github.com/OXY2DEV/markview.nvim",
})

require("markview").setup({
	preview = {
		enable = false,
		icon_provider = "mini",
		max_buf_lines = 1000,
	},
})
