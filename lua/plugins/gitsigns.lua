vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame<cr>", { desc = "git blame", silent = true })
vim.keymap.set("n", "]g", function()
	require("gitsigns").nav_hunk("next")
end, { desc = "next git hunk", silent = true })
vim.keymap.set("n", "[g", function()
	require("gitsigns").nav_hunk("prev")
end, { desc = "previous git hunk", silent = true })

vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

require("gitsigns").setup({
	current_line_blame = true,
	current_line_blame_opts = {
		delay = 500,
	},
	current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
})
