return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			delay = 500,
		},
		current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
	},
	keys = {
		{ "<leader>gb", "<cmd>:Gitsigns blame<cr>", desc = "git blame" },
		{ "]g", "<cmd>:Gitsigns next_hunk<cr>", desc = "next change" },
		{ "[g", "<cmd>:Gitsigns prev_hunk<cr>", desc = "prev change" },
	},
}
