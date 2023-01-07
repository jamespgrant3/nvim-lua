vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
vim.keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>")
vim.keymap.set("n", "<leader>gd", "<cmd>Git diff<cr>")
vim.keymap.set("n", "<leader>gl", "<cmd>Git log<cr>")
-- push to remote without setting upstream
vim.keymap.set("n", "<leader>gp", ":Git -c push.default=current push --no-verify<CR>");
