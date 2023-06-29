vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", function() vim.cmd.Git { args = { 'blame' }} end)

-- blame"<cmd>Git blame<cr>")
vim.keymap.set("n", "<leader>gc", function() vim.cmd.Git { args = { 'commit' }}  end)
vim.keymap.set("n", "<leader>gd", function() vim.cmd.Git { args = { 'diff' }} end)
vim.keymap.set("n", "<leader>gl", function() vim.cmd.Git { args = { 'log' }} end)

-- push to remote without setting upstream
--vim.keymap.set("n", "<leader>gp", ":Git -c push.default=current push --no-verify<CR>");
vim.keymap.set("n", "<leader>gp", function() vim.cmd.Git { args = { '-c push.default=current push --no-verify' }}  end)
vim.keymap.set("n", "<leader>gf", function() vim.cmd.Git { args = { 'fetch' }} end)
vim.keymap.set("n", "<leader>gr", function() vim.cmd.Git { args = { 'rebase' }} end)
