vim.keymap.set("n", "<leader>a", "<cmd>%!prettier --stdin-filepath %<CR>", { silent = true })
vim.keymap.set("n", "<leader>ab", "<cmd>%!prettier components pages posts styles --write<CR>", { silent = true })
