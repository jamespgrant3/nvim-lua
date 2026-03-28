local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>hl', "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<cr>", opts)
map('n', '<leader>ha', "<cmd>lua require('harpoon'):list():add()<cr>", opts)
map('n', '<leader>h1', "<cmd>lua require('harpoon'):list():select(1)<cr>", opts)
map('n', '<leader>h2', "<cmd>lua require('harpoon'):list():select(2)<cr>", opts)
map('n', '<leader>h3', "<cmd>lua require('harpoon'):list():select(3)<cr>", opts)
map('n', '<leader>h4', "<cmd>lua require('harpoon'):list():select(4)<cr>", opts)
map('n', '<leader>h5', "<cmd>lua require('harpoon'):list():select(5)<cr>", opts)

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		require("harpoon"):setup()
	end,
}
