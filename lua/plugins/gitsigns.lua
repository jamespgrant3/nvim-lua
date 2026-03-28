local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>gb', "<cmd>:Gitsigns blame<cr>", opts)
map('n', ']g', "<cmd>:Gitsigns next_hunk<cr>", opts)
map('n', '[g', "<cmd>:Gitsigns prev_hunk<cr>", opts)

return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			delay = 500,
		},
		current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
	}
}
