vim.keymap.set("n", "<leader>gits", vim.cmd.Git)
vim.keymap.set("n", "<leader>gitb", function() vim.cmd.Git { args = { 'blame' }} end)
vim.keymap.set("n", "<leader>gitc", function() vim.cmd.Git { args = { 'commit' }}  end)
vim.keymap.set("n", "<leader>gitd", function() vim.cmd.Git { args = { 'diff' }} end)
vim.keymap.set("n", "<leader>gitl", function() vim.cmd.Git { args = { 'log' }} end)

-- push to remote without setting upstream
--vim.keymap.set("n", "<leader>gp", ":Git -c push.default=current push --no-verify<CR>");
vim.keymap.set("n", "<leader>gitp", function() vim.cmd.Git { args = { '-c push.default=current push --no-verify' }}  end)
vim.keymap.set("n", "<leader>gitf", function() vim.cmd.Git { args = { 'fetch' }} end)
vim.keymap.set("n", "<leader>gitr", function() vim.cmd.Git { args = { 'rebase' }} end)
