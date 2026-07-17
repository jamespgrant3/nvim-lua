local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-h>', "<cmd>TmuxNavigateLeft<cr>", opts)
map('n', '<c-j>', "<cmd>TmuxNavigateDown<cr>", opts)
map('n', '<c-k>', "<cmd>TmuxNavigateUp<cr>", opts)
map('n', '<c-l>', "<cmd>TmuxNavigateRight<cr>", opts)
map('n', '<c-\\>', "<cmd>TmuxNavigatePrevious<cr>", opts)

vim.pack.add({ "https://github.com/christoomey/vim-tmux-navigator" })
