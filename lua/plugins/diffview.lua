local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>dh", "<cmd>:DiffviewFileHistory %<cr>", opts)
map("n", "<leader>do", "<cmd>:DiffviewOpen<cr>", opts)
map("n", "<leader>dc", "<cmd>:DiffviewClose<cr>", opts)
vim.keymap.set("n", "<leader>ds", function()
	local hash = vim.fn.input("Commit hash: ")
	if hash ~= "" then
		vim.cmd("DiffviewOpen " .. hash .. "^.." .. hash)
	end
end, opts)

return {
	"sindrets/diffview.nvim",
	lazy = false,
	opts = {},
}
