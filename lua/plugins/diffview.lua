local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>dh', "<cmd>:DiffviewFileHistory %<cr>", opts)
map('n', '<leader>do', "<cmd>:DiffviewOpen<cr>", opts)
map('n', '<leader>dc', "<cmd>:DiffviewClose<cr>", opts)

return {
	"sindrets/diffview.nvim",
	lazy = false,
	opts = {},
}
