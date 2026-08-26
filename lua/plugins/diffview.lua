-- Mapped under <leader>g* with the other git tooling. <leader>d* is not
-- usable here: <leader>d is "delete to void register" and any <leader>d<key>
-- mapping both delays it and swallows motions like <leader>dh.
vim.keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", { desc = "file history", silent = true })
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "open diffview", silent = true })
vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<cr>", { desc = "close diffview", silent = true })
vim.keymap.set("n", "<leader>gv", function()
	local hash = vim.fn.input("Commit hash: ")
	if hash ~= "" then
		vim.cmd("DiffviewOpen " .. hash .. "^.." .. hash)
	end
end, { desc = "view a commit", silent = true })

vim.pack.add({ "https://github.com/sindrets/diffview.nvim" })

require("diffview").setup({})
