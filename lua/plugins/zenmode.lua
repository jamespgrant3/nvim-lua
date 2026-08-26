local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>z", "<cmd>lua require('zen-mode').toggle()<cr>", opts)

vim.pack.add({ "https://github.com/folke/zen-mode.nvim" })

-- Only non-default options are listed here. See `:help zen-mode-configuration`.
require("zen-mode").setup({
	window = {
		-- keep line numbers and wrapping inside the zen window
		options = {
			number = true,
			relativenumber = true,
			wrap = true,
		},
	},
	plugins = {
		options = {
			-- statusline is shown only if "laststatus" == 3
			laststatus = 0, -- turn off the statusline in zen mode
		},
		twilight = { enabled = false }, -- twilight.nvim is not installed
	},
})
