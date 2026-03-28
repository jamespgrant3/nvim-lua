local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-h>', "<cmd><C-U>TmuxNavigateLeft<cr>", opts)
map('n', '<c-j>', "<cmd><C-U>TmuxNavigateDown<cr>", opts)
map('n', '<c-k>', "<cmd><C-U>TmuxNavigateUp<cr>", opts)
map('n', '<c-l>', "<cmd><C-U>TmuxNavigateRight<cr>", opts)
map('n', '<c-\\>', "<cmd><C-U>TmuxNavigatePrevious<cr>", opts)

return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
		"TmuxNavigatorProcessList",
	}
}
