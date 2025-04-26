return {
	"tomasky/bookmarks.nvim",
	lazy = false,
	opts = {
		save_file = vim.fn.expand("$HOME/repos/state/.bookmarks"),
	},
	keys = {
		{ "<leader>bb", "<cmd>lua require('bookmarks').bookmark_toggle()<cr>", desc = "toggle bookmark" },
		{ "<leader>bn", "<cmd>lua require('bookmarks').bookmark_next()<cr>", desc = "next bookmark" },
		{ "<leader>bp", "<cmd>lua require('bookmarks').bookmark_prev()<cr>", desc = "previous bookmark" },
		{ "<leader>bl", "<cmd>lua require('bookmarks').bookmark_list()<cr>", desc = "list bookmarks" },
		{ "<leader>ba", "<cmd>lua require('bookmarks').bookmark_ann()<cr>", desc = "add bookmark annotation" },
		{
			"<leader>bc",
			"<cmd>lua require('bookmarks').bookmark_clean()<cr>",
			desc = "clear bookmarks in current buffer",
		},
		{ "<leader>bx", "<cmd>lua require('bookmarks').bookmark_clear_all()<cr>", desc = "clear all bookmarks" },
	},
}
